package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.Dept;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DeptMapper extends Mapper<Dept> {
    @Select("WITH TEMP AS  (" +
            "SELECT * FROM dept WHERE id= #{deptId} " +
            "UNION ALL " +
            "SELECT T0.* FROM TEMP,dept T0 WHERE TEMP.ID=T0.parent )" +
            "SELECT * FROM TEMP")
    @ResultMap("com.company.project.dao.DeptMapper.BaseResultMap")
    List<Dept> selectChildrenDept(String deptId);
}