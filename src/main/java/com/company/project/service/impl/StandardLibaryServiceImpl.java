package com.company.project.service.impl;

import com.company.project.dao.StandardLibaryMapper;
import com.company.project.dao.StandardLibaryNodeMapper;
import com.company.project.model.StandardLibary;
import com.company.project.model.StandardLibaryNode;
import com.company.project.service.StandardLibaryService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.*;


/**
 * Created by CodeGenerator on 2018/06/07.
 */
@Service
@Transactional
public class StandardLibaryServiceImpl extends AbstractService<StandardLibary> implements StandardLibaryService {
    @Resource
    private StandardLibaryMapper standardLibaryMapper;
    @Resource
    private StandardLibaryNodeMapper standardLibaryNodeMapper;

    @Override
    public List<StandardLibaryNode> queryStandardNodes(String standardId, int level) {
        List<StandardLibaryNode> results = new ArrayList();
        Map<String,StandardLibaryNode> indexed = new HashMap();

        Condition condition = new Condition(StandardLibaryNode.class);
        condition.createCriteria().andEqualTo("standardId",standardId);
        condition.orderBy("PARENT_NODE_ID");

        List<StandardLibaryNode> nodes = standardLibaryNodeMapper.selectByCondition(condition);
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

    private int getLevel(StandardLibaryNode e, Map<String, StandardLibaryNode> indexed) {
        int level = 0;
        while(indexed.get(e.getParentId())!=null){
            level++;
            e = indexed.get(e.getParentId());
        }
        return level;
    }

    private void sort(List<StandardLibaryNode> results) {
        if(results==null||results.size()==0){
            return;
        }
        Collections.sort(results, new Comparator<StandardLibaryNode>() {
            @Override
            public int compare(StandardLibaryNode n1, StandardLibaryNode n2) {
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
    public void updateNode(StandardLibaryNode standardLibaryNode) {
        standardLibaryNodeMapper.updateByPrimaryKeySelective(standardLibaryNode);
    }
}
