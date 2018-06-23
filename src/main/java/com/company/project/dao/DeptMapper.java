package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.Dept;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DeptMapper extends Mapper<Dept> {
    @Select("select * from dept where find_in_set(id,getChildDept(#{deptId}))")
    @ResultMap("com.company.project.dao.DeptMapper.BaseResultMap")
    List<Dept> selectChildrenDept(String deptId);
}