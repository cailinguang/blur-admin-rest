package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.User;
import com.company.project.service.UserService;
import com.company.project.utils.PasswordUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
* Created by CodeGenerator on 2018/04/17.
*/
@RestController
@RequestMapping("/api/user")
public class UserController {
    @Resource
    private UserService userService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size,@RequestParam String deptId) {
        PageHelper.startPage(page, size);
        Condition condition = new Condition(User.class);
        if(StringUtils.isNotBlank(deptId)){
            condition.createCriteria().andEqualTo("deptId",deptId);
        }

        List<User> list = userService.findAllByCondition(condition);
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    @PostMapping
    public Result add(@RequestBody User user) {
        String password = PasswordUtils.randomPassword();

        user.setPassword(PasswordUtils.digestPassword(user.getUsername(),password));
        user.setRegisterDate(new Date());
        userService.save(user);

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
        userService.update(user);
        return ResultGenerator.genSuccessResult();
    }

    @GetMapping("/{id}")
    public Result detail(@PathVariable String id) {
        User user = userService.findById(id);
        return ResultGenerator.genSuccessResult(user);
    }


}
