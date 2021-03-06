package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.core.ServiceException;
import com.company.project.model.Role;
import com.company.project.service.RoleService;
import com.company.project.utils.Constants;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
* Created by CodeGenerator on 2018/04/23.
*/
@RestController
@RequestMapping("/api/role")
public class RoleController {
    @Resource
    private RoleService roleService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<Role> list = roleService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    @PostMapping
    public Result add(@RequestBody Role role) {
        roleService.save(role);
        return ResultGenerator.genSuccessResult();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") String id) {
        Role queryRole = roleService.findById(id);
        if(Constants.ROLE_CISO.equals(queryRole.getCode())||Constants.ROLE_SECURITY_LIAISON.equals(queryRole.getCode())||Constants.ROLE_ADMIN.equals(queryRole.getCode()) || Constants.ROLE_BUSSINESS_OWNER.equals(queryRole.getCode())){
            throw new ServiceException("Built-in roles do not allow changes!");
        }
        roleService.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    @PutMapping("/{id}")
    public Result update(@PathVariable("id") String id,@RequestBody Role role) {
        Role queryRole = roleService.findById(id);
        if(Constants.ROLE_CISO.equals(queryRole.getCode())||Constants.ROLE_SECURITY_LIAISON.equals(queryRole.getCode())||Constants.ROLE_ADMIN.equals(queryRole.getCode()) || Constants.ROLE_BUSSINESS_OWNER.equals(queryRole.getCode())){
            throw new ServiceException("Built-in roles do not allow changes!");
        }
        role.setId(id);
        roleService.update(role);
        return ResultGenerator.genSuccessResult();
    }

    @GetMapping("/{id}")
    public Result detail(@PathVariable String id) {
        Role role = roleService.findById(id);
        return ResultGenerator.genSuccessResult(role);
    }

}
