package com.company.project.service.impl;

import com.company.project.dao.PermissionMapper;
import com.company.project.model.Menu;
import com.company.project.model.User;
import com.company.project.service.PermissionService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by clg on 2018/5/28.
 */
@Service
@Transactional
public class PermissionServiceImpl implements PermissionService{

    @Resource
    private PermissionMapper permissionMapper;

    @Override
    public List<User> findRoleUsers(String roleId) {
        return permissionMapper.selectUserByRoleId(roleId);
    }

    @Override
    public void roleAssignUsers(String roleId, String assignUsers, String removeUsers) {
        if(StringUtils.isNotBlank(assignUsers)){
            String[] assignUserAry = assignUsers.split(",");
            for(String u:assignUserAry){
                permissionMapper.insertRoleUser(roleId,u);
            }
        }
        if(StringUtils.isNotBlank(removeUsers)){
            String[] removeUserAry = removeUsers.split(",");
            for(String u:removeUserAry){
                permissionMapper.deleteRoleUser(roleId,u);
            }
        }
    }

    @Override
    public void roleAssignMenu(String roleId, String menuIds) {
        permissionMapper.deleteRoleMenu(roleId);
        if(StringUtils.isNotBlank(menuIds)){
            String[] menuAry = menuIds.split(",");
            for(String m:menuAry){
                permissionMapper.insertRoleMenu(roleId,m);
            }
        }
    }

    @Override
    public List<Menu> findRoleMenus(String roleId) {
        return permissionMapper.selectRoleMenus(roleId);
    }

}
