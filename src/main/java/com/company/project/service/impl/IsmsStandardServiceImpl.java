package com.company.project.service.impl;

import com.company.project.dao.*;
import com.company.project.model.*;
import com.company.project.model.property.EnumProperty;
import com.company.project.model.property.FloatProperty;
import com.company.project.model.property.StringProperty;
import com.company.project.service.IsmsStandardService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.*;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
@Service
@Transactional
public class IsmsStandardServiceImpl extends AbstractService<IsmsStandard> implements IsmsStandardService {
    @Resource
    private IsmsStandardMapper standardMapper;
    @Resource
    private IsmsStandardNodeMapper standardNodeMapper;
    @Resource
    private IsmsFloatPropertyMapper floatPropertyMapper;
    @Resource
    private IsmsEnumPropertyMapper enumPropertyMapper;
    @Resource
    private IsmsStringPropertyMapper stringPropertyMapper;

    @Override
    public List<IsmsStandardNode> queryStandardNodes(String standardId,int level) {
        List<IsmsStandardNode> results = new ArrayList();
        Map<String,IsmsStandardNode> indexed = new HashMap();

        Condition condition = new Condition(IsmsStandardNode.class);
        condition.createCriteria().andEqualTo("standardId",standardId);
        condition.orderBy("PARENT_NODE_ID");

        List<IsmsStandardNode> nodes = standardNodeMapper.selectByCondition(condition);
        nodes.forEach(e->indexed.put(e.getNodeId(),e));

        loadEnumProperty(standardId,indexed);
        loadFloatProperty(standardId,indexed);
        loadStringProperty(standardId,indexed);

        nodes.forEach(e->{
            if(e.getParentNodeId().equals("0")){
                results.add(e);
            }
            else if (indexed.containsKey(e.getParentNodeId())) {
                if(level!=0 && level<=getLevel(e,indexed)){
                    return;
                }
                indexed.get(e.getParentNodeId()).addChild(e);
            }
        });
        //sort
        sort(results);

        return results;
    }

    private int getLevel(IsmsStandardNode e, Map<String, IsmsStandardNode> indexed) {
        int level = 0;
        while(indexed.get(e.getParentNodeId())!=null){
            level++;
            e = indexed.get(e.getParentNodeId());
        }
        return level;
    }


    @Override
    public void updateNodeStringPropertyValue(String propertyId, String propertyValue) {
        IsmsStringProperty property = stringPropertyMapper.selectByPrimaryKey(propertyId);
        property.setValue(propertyValue);
        stringPropertyMapper.updateByPrimaryKey(property);
    }

    @Override
    public void createApplicabilityLibary(IsmsStandard applicability) {
        String standardId = applicability.getStandardId();
        IsmsStandard standard = standardMapper.selectByPrimaryKey(standardId);

        applicability.setStandardId(null);
        applicability.setIsEvaluation(1);
        standardMapper.insert(applicability);
        System.out.println(applicability.getStandardId());

        Condition condition = new Condition(IsmsStandardNode.class);
        condition.createCriteria().andEqualTo("standardId",standardId);
        condition.orderBy("PARENT_NODE_ID");

        Map<String,IsmsStandardNode> indexed = new HashMap();
        List<IsmsStandardNode> nodes = standardNodeMapper.selectByCondition(condition);
        nodes.forEach(e->indexed.put(e.getNodeId(),e));
        loadEnumProperty(standardId,indexed);
        loadFloatProperty(standardId,indexed);
        loadStringProperty(standardId,indexed);

        nodes.forEach(e->{
            if(indexed.containsKey(e.getParentNodeId())) {
                indexed.get(e.getParentNodeId()).addChild(e);
            }
        });

        saveNodes(applicability.getSelectNodes(),indexed,applicability.getStandardId());
    }

    private void saveNodes(List<IsmsStandardNode> selectNodes,Map<String,IsmsStandardNode> indexed,String standardId) {
        selectNodes.forEach(node->{
            String nodeId = node.getNodeId();
            node.setProperty(indexed.get(nodeId).getProperties());

            if( node.getApplicability()!=null&&node.getApplicability()==true || (node.getNodeType().equals("vda_level") || node.getNodeType().equals("vda_control"))){

                copyStandardNode(node,standardId);

                if(node.getNodeType().equals("vda_question")){
                    saveNodes(indexed.get(nodeId).getChildren(),indexed,standardId);
                }else{
                    saveNodes(node.getChildren(),indexed,standardId);
                }

            }


        });
    }

    private void copyStandardNode(IsmsStandardNode ismsStandardNode, String standardId) {
        ismsStandardNode.setNodeId(null);
        ismsStandardNode.setStandardId(standardId);
        standardNodeMapper.insert(ismsStandardNode);

        ismsStandardNode.getProperties().forEach((k,v)->{
            if(v instanceof StringProperty){
                StringProperty p = (StringProperty)v;
                IsmsStringProperty pp = new IsmsStringProperty();
                pp.setValue(p.getValue());
                pp.setName(p.getName());
                pp.setReadonly(p.isReadonly()?1:0);
                pp.setStandardId(standardId);
                pp.setNodeId(ismsStandardNode.getNodeId());
                stringPropertyMapper.insert(pp);
            }
            else if(v instanceof EnumProperty){
                EnumProperty p = (EnumProperty)v;
                IsmsEnumProperty pp = new IsmsEnumProperty();
                pp.setValue(p.getValue());
                pp.setName(p.getName());
                pp.setReadonly(p.isReadonly()?1:0);
                pp.setStandardId(standardId);
                pp.setNodeId(ismsStandardNode.getNodeId());
                enumPropertyMapper.insert(pp);
            }
            else if(v instanceof FloatProperty){
                FloatProperty p = (FloatProperty)v;
                IsmsFloatProperty pp = new IsmsFloatProperty();
                pp.setValue(p.getValue());
                pp.setName(p.getName());
                pp.setReadonly(p.isReadonly()?1:0);
                pp.setStandardId(standardId);
                pp.setNodeId(ismsStandardNode.getNodeId());
                floatPropertyMapper.insert(pp);
            }
        });
        if(ismsStandardNode.getNodeType().equals("vda_question")){
            IsmsStringProperty pp = new IsmsStringProperty();
            pp.setValue(ismsStandardNode.getTarget());
            pp.setName("target");
            pp.setReadonly(0);
            pp.setStandardId(standardId);
            pp.setNodeId(ismsStandardNode.getNodeId());
            stringPropertyMapper.insert(pp);

        }

    }

    private void sort(List<IsmsStandardNode> results) {
        if(results==null||results.size()==0){
            return;
        }
        Collections.sort(results, new Comparator<IsmsStandardNode>() {
            @Override
            public int compare(IsmsStandardNode n1, IsmsStandardNode n2) {
                if (n1.getNodePosition() != n2.getNodePosition()) {
                    return n1.getNodePosition() - n2.getNodePosition();
                }
                return n1.getNodeId().compareTo(n2.getNodeId());
            }
        });
        results.forEach(e->{
            sort(e.getChildren());
        });
    }

    private void loadStringProperty(String standardId, Map<String,IsmsStandardNode> indexed) {
        IsmsStringProperty params = new IsmsStringProperty();
        params.setStandardId(standardId);
        List<IsmsStringProperty> properties = stringPropertyMapper.select(params);
        properties.forEach(e->{
            IsmsStandardNode node = indexed.get(e.getNodeId());
            StringProperty property = new StringProperty(e.getPropertyId(),e.getName(),e.getReadonly()!=0);
            property.setValue(e.getValue());
            node.addProperty(property);
        });
    }

    private void loadFloatProperty(String standardId, Map<String,IsmsStandardNode> indexed) {
        IsmsFloatProperty params = new IsmsFloatProperty();
        params.setStandardId(standardId);
        List<IsmsFloatProperty> properties = floatPropertyMapper.select(params);
        properties.forEach(e->{
            IsmsStandardNode node = indexed.get(e.getNodeId());
            FloatProperty property = new FloatProperty(e.getPropertyId(),e.getName(),e.getReadonly()!=0);
            property.setValue(e.getValue());
            node.addProperty(property);
        });
    }

    private void loadEnumProperty(String standardId, Map<String,IsmsStandardNode> indexed) {
        IsmsEnumProperty params = new IsmsEnumProperty();
        params.setStandardId(standardId);
        List<IsmsEnumProperty> properties = enumPropertyMapper.select(params);
        properties.forEach(e->{
            IsmsStandardNode node = indexed.get(e.getNodeId());
            EnumProperty property = EnumProperty.newProperty(e.getEnumType(),e.getPropertyId(),e.getName(),e.getReadonly()!=0);
            property.setValue(e.getValue());
            node.addProperty(property);
        });
    }

}
