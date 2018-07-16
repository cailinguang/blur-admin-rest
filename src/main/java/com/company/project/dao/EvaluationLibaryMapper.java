package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.EvaluationLibary;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface EvaluationLibaryMapper extends Mapper<EvaluationLibary> {

    /**
     * 查询有节点指派给相关人员的评审项目
     * @param userId
     * @return
     */
    @Select("select * from evaluation_libary e where EXISTS ( select 1 from evaluation_libary_node n where n.evaluation_id=e.id and n.assign_user=#{userId} ) order by create_time desc")
    @ResultMap("com.company.project.dao.EvaluationLibaryMapper.BaseResultMap")
    public List<EvaluationLibary> selectTaskByUserId(String userId);


    /**
     * 查询有节点指派给给定人员部门的人员及子部门的评审项目
     * @param userId
     * @return
     */
    @Select("with temp as( " +
            " select id from dept where id=(select dept_id from [user] where id=#{userId}) " +
            " union all " +
            " select t.id from temp,dept t where temp.id=t.parent " +
            ") " +
            "select e.* from evaluation_libary e where exists(select 1 from evaluation_libary_node n left join [user] u on n.assign_user=u.id  where n.evaluation_id=e.id and u.dept_id in (select * from temp)) " +
            "order by create_time desc")
    @ResultMap("com.company.project.dao.EvaluationLibaryMapper.BaseResultMap")
    public List<EvaluationLibary> selectDeptsTaskByUserId(String userId);
}