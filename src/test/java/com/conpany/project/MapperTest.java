package com.conpany.project;

import com.company.project.dao.PermissionMapper;
import com.company.project.dao.UserMapper;
import com.company.project.model.Dept;
import com.company.project.model.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * Created by clg on 2018/4/17.
 */
public class MapperTest extends Tester{

    @Autowired
    UserMapper userMapper;

    @Test
    public void testuserMapper(){
        Example example = new Example(User.class);
        example.createCriteria().andEqualTo("deptId","1");
        List<User> users = userMapper.selectByCondition(example);
    }

    @Autowired
    PermissionMapper permissionMapper;
    @Test
    public void testPermissionMapper(){
        permissionMapper.selectMenuByRoleId("1");
        permissionMapper.selectMenuByUserId("10");
        permissionMapper.selectRoleByUserId("1");
        permissionMapper.selectUserByRoleId("1");
    }
}
