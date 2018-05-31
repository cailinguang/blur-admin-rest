package com.company.project.service;

import com.company.project.model.Menu;
import com.company.project.model.User;

import java.util.List;

/**
 * Created by clg on 2018/5/28.
 */
public interface PermissionService {
    List<User> findRoleUsers(String roleId);

    void roleAssignUsers(String roleId, String assignUsers, String removeUsers);

    void roleAssignMenu(String roleId, String menuIds);

    List<Menu> findRoleMenus(String roleId);
}
