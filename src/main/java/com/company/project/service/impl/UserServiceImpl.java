package com.company.project.service.impl;

import com.company.project.core.ServiceException;
import com.company.project.dao.UserMapper;
import com.company.project.model.User;
import com.company.project.service.UserService;
import com.company.project.core.AbstractService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;


/**
 * Created by CodeGenerator on 2018/04/17.
 */
@Service
@Transactional
public class UserServiceImpl extends AbstractService<User> implements UserService {
    @Resource
    private UserMapper userMapper;

    @Override
    public void saveUser(User user) {

        User findUser = new User();
        findUser.setUsername(user.getUsername());
        int countUserName = userMapper.selectCount(findUser);
        if(countUserName!=0){
            throw new ServiceException("重复的登录名!");
        }
        userMapper.insertSelective(user);
    }

    @Override
    public List<User> findUsersByDeptId(String deptId) {
        User user = new User();
        user.setDeptId(deptId);
        return userMapper.select(user);
    }

    @Override
    public User getCurrentUser() {
        UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        return userMapper.selectByUserName(userDetails.getUsername());
    }

}
