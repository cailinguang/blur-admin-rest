package com.company.project.service;
import com.company.project.model.User;
import com.company.project.core.Service;

import java.util.List;


/**
 * Created by CodeGenerator on 2018/04/17.
 */
public interface UserService extends Service<User> {

    public void saveUser(User user);

    public List<User> findUsersByDeptId(String deptId);

    public User getCurrentUser();

    void updateUser(User user);

    User findUserByUserName(String userName);

    void updatePassword(String userId, String oldPassword, String password);
}
