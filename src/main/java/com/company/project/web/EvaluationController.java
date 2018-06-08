package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.EvaluationLibary;
import com.company.project.model.EvaluationLibaryNode;
import com.company.project.service.EvaluationService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by clg on 2018/6/7.
 */
@RestController
@RequestMapping("/api/evaluation")
public class EvaluationController {

    @Resource
    private EvaluationService evaluationService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<EvaluationLibary> list = evaluationService.findAll();
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
        evaluationService.deleteLibary(id);
        return ResultGenerator.genSuccessResult();
    }

    /**
     * 查询库节点
     * @param standardId
     * @return
     */
    @GetMapping("/standardNodes")
    public Result queryStandardNodes(@RequestParam String evaluationId,@RequestParam(defaultValue = "0") int level){
        List<EvaluationLibaryNode> nodes = evaluationService.queryStandardNodes(evaluationId,level);
        return ResultGenerator.genSuccessResult(nodes);
    }


    /**
     * 新增适用性库
     * @param evaluation
     * @return
     */
    @PostMapping
    public Result saveApplicabilityLibary(@RequestBody EvaluationLibary evaluation){
        evaluationService.createEvaluation(evaluation);
        return ResultGenerator.genSuccessResult();
    }

    /**
     * 更新适用性库,只更新targetValue
     * @param applicability
     * @return
     */
    @PutMapping
    public Result updateApplicabilityLibary(@RequestBody EvaluationLibary applicability){
        evaluationService.updateEvaluation(applicability);
        return ResultGenerator.genSuccessResult();
    }
}
