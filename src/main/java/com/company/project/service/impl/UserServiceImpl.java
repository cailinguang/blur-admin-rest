package com.company.project.service.impl;

import com.company.project.core.AbstractService;
import com.company.project.core.ServiceException;
import com.company.project.dao.PermissionMapper;
import com.company.project.dao.UserMapper;
import com.company.project.model.User;
import com.company.project.service.UserService;
import org.springframework.security.core.context.SecurityContextHolder;
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
    @Resource
    private PermissionMapper permissionMapper;

    @Override
    public void saveUser(User user) {

        User findUser = new User();
        findUser.setUsername(user.getUsername());
        int countUserName = userMapper.selectCount(findUser);
        if(countUserName!=0){
            throw new ServiceException("重复的登录名!");
        }
        userMapper.insertSelective(user);
        if(user.getRoles()!=null&&user.getRoles().size()!=0){
            permissionMapper.insertRoleUser(user.getRoles().get(0).getId(),user.getId());
        }
    }

    @Override
    public List<User> findUsersByDeptId(String deptId) {
        return userMapper.selectByDeptId(deptId);
    }

    @Override
    public User getCurrentUser() {
        String  userName =  (String)SecurityContextHolder.getContext()
                .getAuthentication()
                .getPrincipal();
        return userMapper.selectByUserName(userName);
    }

}
