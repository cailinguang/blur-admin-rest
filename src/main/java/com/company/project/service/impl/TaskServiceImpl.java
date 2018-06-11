package com.company.project.service.impl;

import com.company.project.dao.EvaluationLibaryMapper;
import com.company.project.dao.EvaluationLibaryNodeMapper;
import com.company.project.model.EvaluationLibary;
import com.company.project.model.EvaluationLibaryNode;
import com.company.project.model.User;
import com.company.project.service.RoleService;
import com.company.project.service.TaskService;
import com.company.project.service.UserService;
import com.company.project.utils.Constants;
import com.company.project.utils.SecurityUtils;
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
        nodes.forEach(e->{
            //跳过 question
            if(!queryAll && Constants.VDA_TYPE_QUESTION.equals(e.getType()) && !currentUser.getId().equals(e.getAssignUser())){
                return;
            }
            indexed.put(e.getId(),e);
        });


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

        return results;
    }

    @Override
    public EvaluationLibaryNode queryChildrenNodes(String parentId) {
        EvaluationLibaryNode parent = evaluationLibaryNodeMapper.selectByPrimaryKey(parentId);
        List<EvaluationLibaryNode> nodes = evaluationLibaryNodeMapper.slectAllChildrenNode(parentId);

        Map<String,EvaluationLibaryNode> indexed = new HashMap();
        nodes.forEach(e->indexed.put(e.getId(),e));
        nodes.forEach(e->{
            if(e.getParentId().equals(parentId)){
                parent.addChildren(e);
            }
            else if(indexed.containsKey(e.getParentId())){
                indexed.get(e.getParentId()).addChildren(e);
            }
        });


        return parent;
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
