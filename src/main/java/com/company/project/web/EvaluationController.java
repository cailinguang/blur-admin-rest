package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.EvaluationLibary;
import com.company.project.model.EvaluationLibaryNode;
import com.company.project.service.EvaluationService;
import com.company.project.utils.Constants;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Condition;

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
        Condition condition = new Condition(EvaluationLibary.class);
        condition.orderBy("createTime").desc();
        List<EvaluationLibary> list = evaluationService.findAllByCondition(condition);
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
     * 查询库节点 with scope
     * @param standardId
     * @return
     */
    @GetMapping("/standardNodesWithScope")
    public Result queryStandardNodesWithScope(@RequestParam String evaluationId){
        List<EvaluationLibaryNode> nodes = evaluationService.queryStandardNodes(evaluationId,0);
        //计算分值
        nodes.forEach(node->{
            calculateScope(node);
        });

        return ResultGenerator.genSuccessResult(nodes);
    }

    private double calculateScope(EvaluationLibaryNode node) {
        if(node.getType().equals(Constants.VDA_TYPE_CHAPTER)){
            final double[] scope = {0};
            node.getChildren().forEach(child->{
                scope[0] = scope[0]+calculateScope(child);
            });
            node.setScope(scope[0]/node.getChildren().size());
            return scope[0]/node.getChildren().size();
        }
        else if(node.getType().equals(Constants.VDA_TYPE_QUESTION)){
            final double[] scope = {0};
            node.getChildren().forEach(child->{
                scope[0] = scope[0]+calculateScope(child);
            });
            node.setScope(scope[0]);
            return scope[0];
        }
        else if(node.getType().equals(Constants.VDA_TYPE_LEVEL)){
            if(Constants.EVALUATION_LEVEL_APPROLED_YES.equals(node.getLevelIsApproved())){
                return 1;
            }
            if(node.getChildren().size()>0){
                final double[] scope = {0};
                node.getChildren().forEach(child->{
                    scope[0] = scope[0]+calculateScope(child);
                });
                node.setScope(scope[0]/node.getChildren().size()*0.9);
                return scope[0]/node.getChildren().size()*0.9;
            }else{
                return 0;
            }

        }

        else if(node.getType().equals(Constants.VDA_TYPE_CONTROL)){
            if(node.getChildren().size()!=0){
                final double[] scope = {0};
                node.getChildren().forEach(child->{
                    scope[0] = scope[0]+calculateScope(child);
                });
                node.setScope(scope[0]/node.getChildren().size());
                return scope[0]/node.getChildren().size();
            }else{
                if(node.getComplianceLevel()!=null&&node.getComplianceLevel().equals(Constants.EVALUATION_CONTROL_COMPLIANCE_LEVEL_COMPLIANT)){
                    return 1;
                }
                return 0;
            }
        }
        else return 0d;
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
