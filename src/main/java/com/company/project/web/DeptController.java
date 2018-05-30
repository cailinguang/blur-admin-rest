package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.Dept;
import com.company.project.service.DeptService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
* Created by CodeGenerator on 2018/04/23.
*/
@RestController
@RequestMapping("/api/dept")
public class DeptController {
    @Resource
    private DeptService deptService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<Dept> list = deptService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    @PostMapping
    public Result add(@RequestBody Dept dept) {
        deptService.save(dept);
        return ResultGenerator.genSuccessResult();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") String id) {
        deptService.deleteDept(id);
        return ResultGenerator.genSuccessResult();
    }

    @PutMapping("/{id}")
    public Result update(@PathVariable("id") String id,@RequestBody Dept dept) {
        dept.setId(id);
        deptService.update(dept);
        return ResultGenerator.genSuccessResult();
    }

    @GetMapping("/{id}")
    public Result detail(@PathVariable String id) {
        Dept dept = deptService.findById(id);
        return ResultGenerator.genSuccessResult(dept);
    }

    @PostMapping("/custom/childrens")
    public Result listDeptByParent(@RequestBody String parent) {
        return ResultGenerator.genSuccessResult(deptService.findDeptByParent(parent));
    }

}
