package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.EvaluationLibary;
import com.company.project.model.EvaluationLibaryNode;
import com.company.project.service.TaskService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by clg on 2018/6/11.
 */
@RestController
@RequestMapping("/api/task")
public class TaskController {
    @Resource
    private TaskService taskService;

    @GetMapping
    public Object queryTask(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size){
        PageHelper.startPage(page, size);
        List<EvaluationLibary> list = taskService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    /**
     * 查询库节点
     * @param standardId
     * @return
     */
    @GetMapping("/standardNodes")
    public Result queryStandardNodes(@RequestParam String evaluationId, @RequestParam(defaultValue = "0") int level){
        List<EvaluationLibaryNode> nodes = taskService.queryNodes(evaluationId,level);
        return ResultGenerator.genSuccessResult(nodes);
    }

    /**
     * 根据父节点查询子节点
     * @param parentId
     * @return
     */
    @GetMapping("/childrenNodes")
    public Result queryChildrenNodes(@RequestParam String parentId){
        EvaluationLibaryNode node = taskService.queryChildrenNodes(parentId);
        return ResultGenerator.genSuccessResult(node);
    }

    /**
     * 更新任务
     * @param applicability
     * @return
     */
    @PutMapping("/{type}")
    public Result updateTask(@PathVariable("type")String type,@RequestBody EvaluationLibary applicability){
        taskService.updateTask(applicability,type);
        return ResultGenerator.genSuccessResult();
    }

    @GetMapping("/logs")
    public Result logs(@RequestParam String evaluationId){
        return ResultGenerator.genSuccessResult(taskService.queryAllTaskLog(evaluationId));
    }
}
