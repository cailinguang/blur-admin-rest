package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.ApplicabilityLibary;
import com.company.project.model.ApplicabilityLibaryNode;
import com.company.project.model.StandardLibary;
import com.company.project.model.StandardLibaryNode;
import com.company.project.service.ApplicabilityLibaryService;
import com.company.project.service.StandardLibaryService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
* Created by CodeGenerator on 2018/06/07.
*/
@RestController
@RequestMapping("/api/applicability/libary")
public class ApplicabilityLibaryController {
    @Resource
    private ApplicabilityLibaryService applicabilityLibaryService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        Condition condition = new Condition(ApplicabilityLibary.class);
        condition.orderBy("createTime").desc();
        List<ApplicabilityLibary> list = applicabilityLibaryService.findAllByCondition(condition);
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") String id) {
        applicabilityLibaryService.deleteLibary(id);
        return ResultGenerator.genSuccessResult();
    }

    /**
     * 查询标准库节点
     * @param standardId
     * @return
     */
    @GetMapping("/standardNodes")
    public Result queryStandardNodes(@RequestParam String applicabilityId,@RequestParam(defaultValue = "0") int level){
        List<ApplicabilityLibaryNode> nodes = applicabilityLibaryService.queryStandardNodes(applicabilityId,level);
        return ResultGenerator.genSuccessResult(nodes);
    }


    /**
     * 新增适用性库
     * @param applicability
     * @return
     */
    @PostMapping("/applicability")
    public Result saveApplicabilityLibary(@RequestBody ApplicabilityLibary applicability){
        applicabilityLibaryService.createApplicabilityLibary(applicability);
        return ResultGenerator.genSuccessResult();
    }

    /**
     * 更新适用性库,只更新targetValue
     * @param applicability
     * @return
     */
    @PutMapping("/applicability")
    public Result updateApplicabilityLibary(@RequestBody ApplicabilityLibary applicability){
        applicabilityLibaryService.updateApplicabilityLibary(applicability);
        return ResultGenerator.genSuccessResult();
    }
}
