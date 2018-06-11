package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.EvaluationLibaryNode;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EvaluationLibaryNodeMapper extends Mapper<EvaluationLibaryNode> {
    @Select("select * from evaluation_libary_node where evaluation_id=#{1} ")
    @ResultMap("com.company.project.dao.EvaluationLibaryNodeMapper.BaseResultMap")
    List<EvaluationLibaryNode> selectNodesByEvaluationIdWithAssignUser(String evaluationId);


    /**
     * 根据父节点递归查询所有子节点
     * @param parentNodeId 父节点
     * @return
     */
    //sel在xml里面
    public List<EvaluationLibaryNode> slectAllChildrenNode(String parentNodeId);
}