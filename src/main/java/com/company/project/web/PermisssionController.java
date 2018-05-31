package com.company.project.web;


import com.company.project.core.ResultGenerator;
import com.company.project.model.Menu;
import com.company.project.model.User;
import com.company.project.service.PermissionService;
import com.company.project.service.UserService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by clg on 2018/5/28.
 */
@RestController
@RequestMapping("/api/permission")
public class PermisssionController {

    @Resource
    private PermissionService permissionService;
    @Resource
    private UserService userService;

    /**
     * 角色-已分配用户
     * @param roleId
     * @return
     */
    @GetMapping("/roleUsers")
    public Object queryRoleUsers(@RequestParam String roleId){
        List<User> list = permissionService.findRoleUsers(roleId);
        return ResultGenerator.genSuccessResult(list);
    }

    /**
     * 角色-未分配用户
     * @param roleId
     * @return
     */
    @GetMapping("/roleAssignUsers")
    public Object queryRoleAssignUsers(@RequestParam String roleId){
        List<User> all = userService.findAll();
        List<User> list = permissionService.findRoleUsers(roleId);
        all.removeAll(list);
        return ResultGenerator.genSuccessResult(all);
    }

    /**
     * 角色分配用户
     * @param roleId
     * @param assignUsers
     * @param removeUsers
     * @return
     */
    @PostMapping("/roleAssignUsers")
    public Object roleAssignUsers(@RequestBody Map<String,String> map){
        String roleId = map.get("roleId"),
               assignUsers = map.get("assignUsers"),
               removeUsers = map.get("removeUsers");

        permissionService.roleAssignUsers(roleId,assignUsers,removeUsers);
        return ResultGenerator.genSuccessResult();
    }

    /**
     * 角色分配菜单
     * @param map
     * @return
     */
    @PostMapping("roleAssignMenu")
    public Object roleAssignMenu(@RequestBody Map<String,String> map){
        String roleId = map.get("roleId");
        String menuIds = map.get("menuIds");
        permissionService.roleAssignMenu(roleId,menuIds);
        return ResultGenerator.genSuccessResult();
    }

    /**
     * 角色已分配菜单
     * @param map
     * @return
     */
    @GetMapping("roleAssignMenu")
    public Object queryRoleAssignMenu(String roleId){
        List<Menu> list = permissionService.findRoleMenus(roleId);
        return ResultGenerator.genSuccessResult(list);
    }
}
