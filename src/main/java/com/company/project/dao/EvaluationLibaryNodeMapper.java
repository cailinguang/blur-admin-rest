package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.EvaluationLibaryNode;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface EvaluationLibaryNodeMapper extends Mapper<EvaluationLibaryNode> {
    //sql in xml
    List<EvaluationLibaryNode> selectNodesByEvaluationIdWithAssignUser(String evaluationId);


    /**
     * 根据父节点递归查询所有子节点
     * @param parentNodeId 父节点
     * @return
     */
    //sel在xml里面
    public List<EvaluationLibaryNode> slectAllChildrenNode(String parentNodeId);


    @Insert("<script>"  +
            "insert into evaluation_libary_node(id, parent_id, evaluation_id, type, name, description, target_value, assign_user, status, " +
            "severity_level, level_is_approved, compliance_level, node_position, applicability_node_id) VALUES " +
            "<foreach collection=\"list\" item=\"item1\" index=\"index\"  separator=\",\">" +
            "(#{item1.id,jdbcType=VARCHAR}, #{item1.parentId,jdbcType=VARCHAR}, #{item1.evaluationId,jdbcType=VARCHAR}," +
            " #{item1.type,jdbcType=VARCHAR}, #{item1.name,jdbcType=VARCHAR}, #{item1.description,jdbcType=VARCHAR}, " +
            "#{item1.targetValue,jdbcType=VARCHAR}, #{item1.assignUser,jdbcType=VARCHAR}, #{item1.status,jdbcType=VARCHAR}, " +
            "#{item1.severityLevel,jdbcType=VARCHAR}, #{item1.levelIsApproved,jdbcType=VARCHAR}, " +
            "#{item1.complianceLevel,jdbcType=VARCHAR}, #{item1.nodePosition,jdbcType=INTEGER}, " +
            "#{item1.applicabilityNodeId,jdbcType=VARCHAR})" +
            "</foreach>" +
            "</script>")
    int batchInsert(@Param("list")List<EvaluationLibaryNode> nodes);

    @Select("select count(*) from evaluation_libary_node where evaluation_id=#{param1}")
    int countByEvaluationId(String evaluationId);

    @Select("select count(*) from evaluation_libary_node where evaluation_id=#{param1} and status=#{param2}")
    int countByStatus(String evaluationId, String status);
}