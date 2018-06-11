package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.EvaluationLibary;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EvaluationLibaryMapper extends Mapper<EvaluationLibary> {

    /**
     * 查询有节点指派给相关人员的评审项目
     * @param userId
     * @return
     */
    @Select("select * from evaluation_libary e where EXISTS ( select 1 from evaluation_libary_node n where n.evaluation_id=e.id and n.assign_user=#{userId} )")
    public List<EvaluationLibary> selectTaskByUserId(String userId);

}