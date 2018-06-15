package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.User;
import com.company.project.service.UserService;
import com.company.project.utils.PasswordUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
* Created by CodeGenerator on 2018/04/17.
*/
@RestController
@RequestMapping("/api/user")
public class UserController {
    @Resource
    private UserService userService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size,@RequestParam(defaultValue = "") String deptId) {
        PageHelper.startPage(page, size);

        List<User> list = userService.findUsersByDeptId(deptId);
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    @PostMapping
    public Result add(@RequestBody User user) {
        String password = PasswordUtils.randomPassword();

        user.setPassword(PasswordUtils.digestPassword(user.getUsername(),password));
        user.setRegisterDate(new Date());

        userService.saveUser(user);

        return ResultGenerator.genSuccessResult(password);
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") String id) {
        userService.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    @PutMapping("/{id}")
    public Result update(@PathVariable("id") String id,@RequestBody User user) {
        user.setId(id);
        userService.updateUser(user);
        return ResultGenerator.genSuccessResult();
    }

    @PutMapping("/resetpassword/{id}")
    public Result resetPassword(@PathVariable("id") String id){
        User user = userService.findById(id);
        user.setPassword(PasswordUtils.digestPassword(user.getUsername(),PasswordUtils.DEFAULT_PASSWORD));
        userService.update(user);
        return ResultGenerator.genSuccessResult(PasswordUtils.DEFAULT_PASSWORD);
    }


    @GetMapping("/currentUser")
    public Result currentUser(){
        return ResultGenerator.genSuccessResult(userService.getCurrentUser());
    }

    @PutMapping("/updatePassword")
    public Result updatePassword(@RequestBody Map<String,String> params){
        String oldPassword = params.get("oldPassword");
        String password = params.get("password");
        String id = params.get("id");
        userService.updatePassword(id,oldPassword,password);
        return ResultGenerator.genSuccessResult();
    }

}
