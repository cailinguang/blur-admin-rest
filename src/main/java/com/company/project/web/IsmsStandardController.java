package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.IsmsStandard;
import com.company.project.service.IsmsStandardService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
* Created by CodeGenerator on 2018/06/01.
*/
@RestController
@RequestMapping("/api/isms/standard")
public class IsmsStandardController {
    @Resource
    private IsmsStandardService ismsStandardService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<IsmsStandard> list = ismsStandardService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    @PostMapping
    public Result add(@RequestBody IsmsStandard ismsStandard) {
        ismsStandardService.save(ismsStandard);
        return ResultGenerator.genSuccessResult();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") String id) {
        ismsStandardService.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    @PutMapping("/{id}")
    public Result update(@PathVariable("id") String id,@RequestBody IsmsStandard ismsStandard) {
        ismsStandard.setStandardId(id);
        ismsStandardService.update(ismsStandard);
        return ResultGenerator.genSuccessResult();
    }

    @GetMapping("/{id}")
    public Result detail(@PathVariable String id) {
        IsmsStandard ismsStandard = ismsStandardService.findById(id);
        return ResultGenerator.genSuccessResult(ismsStandard);
    }

}
