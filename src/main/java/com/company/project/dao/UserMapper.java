package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper extends Mapper<User> {

    public User selectByUserName(@Param("userName") String userName);

    //sql in xml
    public List<User> selectByDeptId(@Param("deptId") String deptId);

}