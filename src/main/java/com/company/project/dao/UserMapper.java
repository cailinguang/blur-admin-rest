package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper extends Mapper<User> {

    @Select("select * from user where username=#{username}")
    @ResultMap("com.company.project.dao.UserMapper.BaseResultMap")
    public User selectByUserName(String userName);

    //sql in xml
    public List<User> selectByDeptId(@Param("deptId") String deptId);

}