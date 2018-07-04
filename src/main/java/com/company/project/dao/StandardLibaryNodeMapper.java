package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.StandardLibaryNode;
import org.apache.ibatis.annotations.Update;

public interface StandardLibaryNodeMapper extends Mapper<StandardLibaryNode> {

    @Update("update applicability_libary_node set description=#{param2},name=#{param3} where  standard_node_id=#{param1}")
    public int updateApplicabilityNodeDescription(String standardNodeId,String description,String name);

    @Update("update evaluation_libary_node e  set description=#{param2},name=#{param3} where exists (select 1 from applicability_libary_node a where e.applicability_node_id=a.id and a.standard_node_id=#{param1})")
    public int updateEvaluationNodeDescription(String standardNodeId,String description,String name);
}