package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.Dept;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DeptMapper extends Mapper<Dept> {
    @Select("select * from dept,(select @c := getChildDept(#{deptId})) initialisation where find_in_set(id,@c) ")
    @ResultMap("com.company.project.dao.DeptMapper.BaseResultMap")
    List<Dept> selectChildrenDept(String deptId);
}