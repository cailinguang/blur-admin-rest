package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.ApplicabilityLibaryNode;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ApplicabilityLibaryNodeMapper extends Mapper<ApplicabilityLibaryNode> {

    @Insert("<script>"  +
            "insert into applicability_libary_node(id, parent_id, applicability_id, type, name, description, target_value, node_position, standard_node_id) VALUES " +
            "<foreach collection=\"list\" item=\"item1\" index=\"index\"  separator=\",\">" +
            "(#{item1.id,jdbcType=VARCHAR}, #{item1.parentId,jdbcType=VARCHAR}, #{item1.applicabilityId,jdbcType=VARCHAR}," +
            " #{item1.type,jdbcType=VARCHAR}, #{item1.name,jdbcType=VARCHAR}, #{item1.description,jdbcType=VARCHAR}, " +
            "#{item1.targetValue,jdbcType=VARCHAR}, #{item1.nodePosition,jdbcType=INTEGER}, " +
            "#{item1.standardNodeId,jdbcType=VARCHAR})" +
            "</foreach>" +
            "</script>")
    int batchInsert(@Param("list")List<ApplicabilityLibaryNode> nodes);
}