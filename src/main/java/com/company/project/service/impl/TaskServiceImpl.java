package com.company.project.service.impl;

import com.company.project.core.ServiceException;
import com.company.project.dao.EvaluationLibaryMapper;
import com.company.project.dao.EvaluationLibaryNodeMapper;
import com.company.project.model.EvaluationLibary;
import com.company.project.model.EvaluationLibaryNode;
import com.company.project.model.User;
import com.company.project.service.EvaluationService;
import com.company.project.service.RoleService;
import com.company.project.service.TaskService;
import com.company.project.service.UserService;
import com.company.project.utils.Constants;
import com.company.project.utils.SecurityUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by clg on 2018/6/11.
 */
@Service
@Transactional
public class TaskServiceImpl implements TaskService {

    @Resource
    private EvaluationLibaryMapper evaluationLibaryMapper;
    @Resource
    private EvaluationLibaryNodeMapper evaluationLibaryNodeMapper;
    @Resource
    private UserService userService;
    @Resource
    private EvaluationService evaluationService;

    @Override
    public List<EvaluationLibary> findAll() {
        if(SecurityUtils.hasRole(Constants.ROLE_CISO)){
            return evaluationLibaryMapper.selectAll();
        }else{
            return evaluationLibaryMapper.selectTaskByUserId(userService.getCurrentUser().getId());
        }
    }

    @Override
    public List<EvaluationLibaryNode> queryNodes(String evaluationId, int level) {
        //当角色是CISO查询所有question,否则根据用户筛选
        final boolean queryAll = SecurityUtils.hasRole(Constants.ROLE_CISO);
        User currentUser = userService.getCurrentUser();

        List<EvaluationLibaryNode> results = new ArrayList();
        Map<String,EvaluationLibaryNode> indexed = new HashMap();

        Condition condition = new Condition(EvaluationLibaryNode.class);
        condition.createCriteria().andEqualTo("evaluationId",evaluationId);

        List<EvaluationLibaryNode> nodes = evaluationLibaryNodeMapper.selectNodesByEvaluationIdWithAssignUser(evaluationId);
        for(int i=nodes.size()-1;i>=0;i--){
            EvaluationLibaryNode e = nodes.get(i);
            //跳过 question
            if(!queryAll && Constants.VDA_TYPE_QUESTION.equals(e.getType()) && !currentUser.getId().equals(e.getAssignUser())){
                nodes.remove(i);
                continue;
            }
            indexed.put(e.getId(),e);
        }


        nodes.forEach(e->{
            if(e.getParentId().equals("0")){
                results.add(e);
            }
            else if (indexed.containsKey(e.getParentId())) {
                if(level!=0 && level<=getLevel(e,indexed)){
                    return;
                }
                indexed.get(e.getParentId()).addChildren(e);
            }
        });

        //sort
        sort(results);

        for(int i=results.size()-1;i>=0;i--){
            if(results.get(i).getChildren().size()==0){
                results.remove(i);
            }
        }

        return results;
    }

    @Override
    public EvaluationLibaryNode queryChildrenNodes(String parentId) {
        EvaluationLibaryNode parent = evaluationLibaryNodeMapper.selectByPrimaryKey(parentId);
        List<EvaluationLibaryNode> nodes = evaluationLibaryNodeMapper.slectAllChildrenNode(parentId);
        nodes.forEach(e->{
            _children(e);
        });

        parent.setChildren(nodes);
        return parent;
    }

    @Override
    public void updateTask(EvaluationLibary evaluation,String type) {
        EvaluationLibary update = new EvaluationLibary();
        update.setId(evaluation.getId());
        update.setStatus(getEvaluationStatusFromType(type));
        evaluationLibaryMapper.updateByPrimaryKeySelective(update);

        List<EvaluationLibaryNode> selectNodes = evaluation.getSelectNodes();
        selectNodes.forEach(e->{
            saveNodes(e,type);
        });

    }

    private void saveNodes(EvaluationLibaryNode e,String type) {
        if(e.getType().equals(Constants.VDA_TYPE_QUESTION)){
            EvaluationLibaryNode updateNode = new EvaluationLibaryNode();
            updateNode.setId(e.getId());
            updateNode.setStatus(getEvaluationQuestionStatusFromType(type));
            updateNode.setSeverityLevel(e.getSeverityLevel());
            evaluationLibaryNodeMapper.updateByPrimaryKeySelective(updateNode);
        }
        if(e.getType().equals(Constants.VDA_TYPE_LEVEL)){
            EvaluationLibaryNode updateNode = new EvaluationLibaryNode();
            updateNode.setId(e.getId());
            updateNode.setLevelIsApproved(e.getLevelIsApproved());
            evaluationLibaryNodeMapper.updateByPrimaryKeySelective(updateNode);
        }
        else if(e.getType().equals(Constants.VDA_TYPE_CONTROL) && e.getChildren().size()==0){
            EvaluationLibaryNode updateNode = new EvaluationLibaryNode();
            updateNode.setId(e.getId());
            updateNode.setComplianceLevel(e.getComplianceLevel());
            //TODO evidences
            evaluationLibaryNodeMapper.updateByPrimaryKeySelective(updateNode);
        }
        e.getChildren().forEach(e1->{
            saveNodes(e1,type);
        });
    }

    private String getEvaluationStatusFromType(String type){
        if("save".equals(type)){
            return Constants.EVALUATION_STATUS_PROCESSING;
        }
        else if("commit".equals(type)){
            return Constants.EVALUATION_STATUS_PROCESSING;
        }
        else if("review".equals(type)){
            return Constants.EVALUATION_STATUS_END;
        }
        else{
            throw new ServiceException("无效的type!");
        }
    }

    private String getEvaluationQuestionStatusFromType(String type){
        if("save".equals(type)){
            return Constants.EVALUATION_QUESTION_STATUS_PROCESSING;
        }
        else if("commit".equals(type)){
            return Constants.EVALUATION_QUESTION_STATUS_SUBMITTED;
        }
        else if("review".equals(type)){
            return Constants.EVALUATION_QUESTION_STATUS_REVIEW;
        }
        else{
            throw new ServiceException("无效的type!");
        }
    }

    private void _children(EvaluationLibaryNode parent){
        parent.setChildren(evaluationLibaryNodeMapper.slectAllChildrenNode(parent.getId()));
        parent.getChildren().forEach(e->{
            _children(e);
        });
    }

    private int getLevel(EvaluationLibaryNode e, Map<String, EvaluationLibaryNode> indexed) {
        int level = 0;
        while(indexed.get(e.getParentId())!=null){
            level++;
            e = indexed.get(e.getParentId());
        }
        return level;
    }

    private void sort(List<EvaluationLibaryNode> results) {
        if(results==null||results.size()==0){
            return;
        }
        Collections.sort(results, new Comparator<EvaluationLibaryNode>() {
            @Override
            public int compare(EvaluationLibaryNode n1, EvaluationLibaryNode n2) {
                if (n1.getNodePosition() != n2.getNodePosition()) {
                    return n1.getNodePosition() - n2.getNodePosition();
                }
                return n1.getId().compareTo(n2.getId());
            }
        });
        results.forEach(e->{
            sort(e.getChildren());
        });
    }
}
