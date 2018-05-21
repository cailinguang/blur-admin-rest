package com.conpany.project;

import com.company.project.model.User;
import com.company.project.service.UserService;
import com.github.pagehelper.PageHelper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Condition;
import tk.mybatis.mapper.entity.Example;

/**
 * Created by clg on 2018/5/21.
 */
public class ServiceTest extends Tester{
    @Autowired
    UserService userService;

    @Test
    public void testUserService(){
        PageHelper.startPage(1, 1);
        Condition example = new Condition(User.class);
        example.createCriteria().andEqualTo("deptId","1");
        userService.findAllByCondition(example);
    }
}
