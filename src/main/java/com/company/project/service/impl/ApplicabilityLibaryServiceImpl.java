package com.company.project.service.impl;

import com.company.project.core.AbstractService;
import com.company.project.dao.*;
import com.company.project.dao.ApplicabilityLibaryNodeMapper;
import com.company.project.model.*;
import com.company.project.model.ApplicabilityLibaryNode;
import com.company.project.service.ApplicabilityLibaryService;
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
public class ApplicabilityLibaryServiceImpl extends AbstractService<ApplicabilityLibary> implements ApplicabilityLibaryService {
    @Resource
    private StandardLibaryNodeMapper standardLibaryNodeMapper;
    @Autowired
    private ApplicabilityLibaryMapper applicabilityLibaryMapper;
    @Autowired
    private ApplicabilityLibaryNodeMapper applicabilityLibaryNodeMapper;

    @Override
    public void createApplicabilityLibary(ApplicabilityLibary applicability) {
        applicability.setCreateTime(new Date());
        applicabilityLibaryMapper.insert(applicability);

        System.out.println(applicability.getId());

        Map<String,StandardLibaryNode> indexed = new HashMap();
        Condition condition = new Condition(StandardLibaryNode.class);
        condition.createCriteria().andEqualTo("standardId",applicability.getStandardId());

        List<StandardLibaryNode> nodes = standardLibaryNodeMapper.selectByCondition(condition);
        nodes.forEach(e->indexed.put(e.getId(),e));


        nodes.forEach(e->{
            if (indexed.containsKey(e.getParentId())) {
                indexed.get(e.getParentId()).addChildren(e);
            }
        });

        List<ApplicabilityLibaryNode> batchInserts = new ArrayList();
        saveNodes(applicability.getSelectNodes(),indexed,applicability.getId(),"0",batchInserts);
        applicabilityLibaryNodeMapper.batchInsert(batchInserts);
    }

    private void saveNodes(List<ApplicabilityLibaryNode> selectNodes, Map<String,StandardLibaryNode> indexed, String applicabilityId,String parentId,List<ApplicabilityLibaryNode> batchInserts) {
        selectNodes.forEach(node->{
            String nodeId = node.getId();

            if( node.getApplicability()!=null&&node.getApplicability()==true || (node.getType().equals(Constants.VDA_TYPE_LEVEL) || node.getType().equals(Constants.VDA_TYPE_CONTROL))){

                node.setId(UUID.randomUUID().toString().replaceAll("-",""));
                node.setParentId(parentId);
                node.setApplicabilityId(applicabilityId);
                node.setStandardNodeId(nodeId);
                batchInserts.add(node);

                if(node.getType().equals(Constants.VDA_TYPE_QUESTION)){

                    List<ApplicabilityLibaryNode> childrens = new ArrayList();
                    indexed.get(nodeId).getChildren().forEach(e->{
                        ApplicabilityLibaryNode target = new ApplicabilityLibaryNode();

                        deepCopy(e,target);

                        childrens.add(target);
                    });

                    saveNodes(childrens,indexed,applicabilityId,node.getId(),batchInserts);
                }else{
                    saveNodes(node.getChildren(),indexed,applicabilityId,node.getId(),batchInserts);
                }

            }


        });
    }

    private void deepCopy(StandardLibaryNode source,ApplicabilityLibaryNode target){
        BeanUtils.copyProperties(source,target);

        List<ApplicabilityLibaryNode> children = new ArrayList();
        source.getChildren().forEach(e->{
            ApplicabilityLibaryNode t = new ApplicabilityLibaryNode();
            deepCopy(e,t);
            children.add(t);
        });
        target.setChildren(children);
    }

    @Override
    public List<ApplicabilityLibaryNode> queryStandardNodes(String applicabilityId, int level) {
        List<ApplicabilityLibaryNode> results = new ArrayList();
        Map<String,ApplicabilityLibaryNode> indexed = new HashMap();

        Condition condition = new Condition(ApplicabilityLibaryNode.class);
        condition.createCriteria().andEqualTo("applicabilityId",applicabilityId);

        List<ApplicabilityLibaryNode> nodes = applicabilityLibaryNodeMapper.selectByCondition(condition);
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

    private int getLevel(ApplicabilityLibaryNode e, Map<String, ApplicabilityLibaryNode> indexed) {
        int level = 0;
        while(indexed.get(e.getParentId())!=null){
            level++;
            e = indexed.get(e.getParentId());
        }
        return level;
    }

    private void sort(List<ApplicabilityLibaryNode> results) {
        if(results==null||results.size()==0){
            return;
        }
        Collections.sort(results, new Comparator<ApplicabilityLibaryNode>() {
            @Override
            public int compare(ApplicabilityLibaryNode n1, ApplicabilityLibaryNode n2) {
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


    @Override
    public void updateApplicabilityLibary(ApplicabilityLibary applicability) {
        applicabilityLibaryMapper.updateByPrimaryKeySelective(applicability);

        List<ApplicabilityLibaryNode> selectNodes = applicability.getSelectNodes();
        selectNodes.forEach(e->{
            e.getChildren().forEach(e2->{
                if(e2.getApplicability()!=null&&e2.getApplicability()==true && e2.getType().equals(Constants.VDA_TYPE_QUESTION)) {
                    ApplicabilityLibaryNode update = new ApplicabilityLibaryNode();
                    update.setId(e2.getId());
                    update.setTargetValue(e2.getTargetValue());
                    applicabilityLibaryNodeMapper.updateByPrimaryKeySelective(update);
                }
            });
        });
    }

    @Override
    public void deleteLibary(String id) {

        applicabilityLibaryMapper.deleteByPrimaryKey(id);

        Condition condition = new Condition(ApplicabilityLibaryNode.class);
        condition.createCriteria().andEqualTo("applicabilityId",id);
        applicabilityLibaryNodeMapper.deleteByCondition(condition);
    }
}
