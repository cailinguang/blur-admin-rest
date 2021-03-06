package com.company.project.service.impl;

import com.company.project.core.AbstractService;
import com.company.project.core.ServiceException;
import com.company.project.dao.ApplicabilityLibaryMapper;
import com.company.project.dao.ApplicabilityLibaryNodeMapper;
import com.company.project.dao.EvaluationLibaryMapper;
import com.company.project.dao.EvaluationLibaryNodeMapper;
import com.company.project.model.*;
import com.company.project.service.EvaluationService;
import com.company.project.service.UserService;
import com.company.project.utils.Constants;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.*;

/**
 * Created by clg on 2018/6/7.
 */
@Service
@Transactional
public class EvaluationServiceImpl extends AbstractService<EvaluationLibary> implements EvaluationService{

    @Resource
    private EvaluationLibaryMapper evaluationLibaryMapper;
    @Resource
    private EvaluationLibaryNodeMapper evaluationLibaryNodeMapper;

    @Resource
    private ApplicabilityLibaryMapper applicabilityLibaryMapper;
    @Resource
    private ApplicabilityLibaryNodeMapper applicabilityLibaryNodeMapper;
    @Resource
    private UserService userService;

    @Override
    public void deleteLibary(String id) {
        EvaluationLibary evaluation = evaluationLibaryMapper.selectByPrimaryKey(id);
        if(!Constants.EVALUATION_STATUS_NEW.equals(evaluation.getStatus())){
            throw new ServiceException("Only new Project can be deleted !");
        }
        evaluationLibaryMapper.deleteByPrimaryKey(id);
        Condition condition = new Condition(EvaluationLibaryNode.class);
        condition.createCriteria().andEqualTo("evaluationId",id);
        evaluationLibaryNodeMapper.deleteByCondition(condition);
    }

    @Override
    public List<EvaluationLibaryNode> queryStandardNodes(String evaluationId, int level) {
        List<EvaluationLibaryNode> results = new ArrayList();
        Map<String,EvaluationLibaryNode> indexed = new HashMap();

        Condition condition = new Condition(EvaluationLibaryNode.class);
        condition.createCriteria().andEqualTo("evaluationId",evaluationId);

        List<EvaluationLibaryNode> nodes = evaluationLibaryNodeMapper.selectNodesByEvaluationIdWithAssignUser(evaluationId);
        nodes.forEach(e->indexed.put(e.getId(),e));


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
    public void createEvaluation(EvaluationLibary evaluation) {
        evaluation.setCreateTime(new Date());
        evaluation.setStatus(Constants.EVALUATION_STATUS_NEW);
        evaluation.setCreator(userService.getCurrentUser().getId());
        evaluationLibaryMapper.insert(evaluation);

        System.out.println(evaluation.getId());

        Map<String,ApplicabilityLibaryNode> indexed = new HashMap();
        Condition condition = new Condition(ApplicabilityLibaryNode.class);
        condition.createCriteria().andEqualTo("applicabilityId",evaluation.getApplicabilityId());

        List<ApplicabilityLibaryNode> nodes = applicabilityLibaryNodeMapper.selectByCondition(condition);
        nodes.forEach(e->indexed.put(e.getId(),e));

        nodes.forEach(e->{
            if (indexed.containsKey(e.getParentId())) {
                indexed.get(e.getParentId()).addChildren(e);
            }
        });

        List<EvaluationLibaryNode> batchInserts = new ArrayList();
        saveNodes(evaluation.getSelectNodes(),indexed,evaluation.getId(),"0",batchInserts);
        if(batchInserts.size()==0){
            throw new ServiceException("Please select at least one question");
        }
        evaluationLibaryNodeMapper.batchInsert(batchInserts);
    }

    private void saveNodes(List<EvaluationLibaryNode> selectNodes, Map<String,ApplicabilityLibaryNode> indexed, String evaluationId,String parentId,List<EvaluationLibaryNode> batchInserts) {
        selectNodes.forEach(node->{
            String nodeId = node.getId();

            if( node.getApplicability()!=null&&node.getApplicability()==true || (node.getType().equals(Constants.VDA_TYPE_LEVEL) || node.getType().equals(Constants.VDA_TYPE_CONTROL))){

                node.setId(UUID.randomUUID().toString().replaceAll("-",""));
                node.setParentId(parentId);
                node.setEvaluationId(evaluationId);
                node.setApplicabilityNodeId(nodeId);

                if(node.getType().equals(Constants.VDA_TYPE_QUESTION)){
                    node.setStatus(Constants.EVALUATION_QUESTION_STATUS_PENDING);

                    List<EvaluationLibaryNode> childrens = new ArrayList();
                    indexed.get(nodeId).getChildren().forEach(e->{
                        EvaluationLibaryNode target = new EvaluationLibaryNode();

                        deepCopy(e,target);

                        childrens.add(target);
                    });

                    saveNodes(childrens,indexed,evaluationId,node.getId(),batchInserts);
                }else{
                    saveNodes(node.getChildren(),indexed,evaluationId,node.getId(),batchInserts);
                }

                batchInserts.add(node);
            }


        });
    }

    private void deepCopy(ApplicabilityLibaryNode source,EvaluationLibaryNode target){
        BeanUtils.copyProperties(source,target);

        List<EvaluationLibaryNode> children = new ArrayList();
        source.getChildren().forEach(e->{
            EvaluationLibaryNode t = new EvaluationLibaryNode();
            deepCopy(e,t);
            children.add(t);
        });
        target.setChildren(children);
    }

    @Override
    public void updateEvaluation(EvaluationLibary evaluation) {
        User user = userService.getCurrentUser();
        EvaluationLibary original = evaluationLibaryMapper.selectByPrimaryKey(evaluation.getId());
        if(original.getCreator()!=null && !original.getCreator().equals(user.getId())){
            throw new ServiceException("Only project sponsors can modify!");
        }
        evaluationLibaryMapper.updateByPrimaryKeySelective(evaluation);

        List<EvaluationLibaryNode> selectNodes = evaluation.getSelectNodes();
        selectNodes.forEach(e->{
            e.getChildren().forEach(e2->{
                if(e2.getApplicability()!=null&&e2.getApplicability()==true && e2.getType().equals(Constants.VDA_TYPE_QUESTION) && e2.getAssignUser()!=null) {
                    EvaluationLibaryNode update = new EvaluationLibaryNode();
                    update.setId(e2.getId());
                    update.setAssignUser(e2.getAssignUser());
                    evaluationLibaryNodeMapper.updateByPrimaryKeySelective(update);
                }
            });
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
