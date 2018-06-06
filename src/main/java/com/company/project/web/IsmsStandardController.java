package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.IsmsStandard;
import com.company.project.model.IsmsStandardNode;
import com.company.project.model.IsmsStringProperty;
import com.company.project.service.IsmsStandardService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.web.bind.annotation.*;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
* Created by CodeGenerator on 2018/06/01.
*/
@RestController
@RequestMapping("/api/isms/standard")
public class IsmsStandardController {
    @Resource
    private IsmsStandardService standardService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size,
                       @RequestParam(defaultValue = "0") String isEvaluation, @RequestParam(defaultValue = "vda") String standardType) {
        PageHelper.startPage(page, size);
        Condition condition = new Condition(IsmsStandard.class);
        condition.createCriteria().andEqualTo("isEvaluation",isEvaluation).andEqualTo("standardType",standardType);

        List<IsmsStandard> list = standardService.findAllByCondition(condition);
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    @PostMapping
    public Result add(@RequestBody IsmsStandard ismsStandard) {
        standardService.save(ismsStandard);
        return ResultGenerator.genSuccessResult();
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") String id) {
        standardService.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    @PutMapping("/{id}")
    public Result update(@PathVariable("id") String id,@RequestBody IsmsStandard ismsStandard) {
        ismsStandard.setStandardId(id);
        standardService.update(ismsStandard);
        return ResultGenerator.genSuccessResult();
    }

    @GetMapping("/{id}")
    public Result detail(@PathVariable String id) {
        IsmsStandard ismsStandard = standardService.findById(id);
        return ResultGenerator.genSuccessResult(ismsStandard);
    }

    /**
     * 查询标准库节点
     * @param standardId
     * @return
     */
    @GetMapping("/standardNodes")
    public Result queryStandardNodes(@RequestParam String standardId,@RequestParam(defaultValue = "-1") int level){
        List<IsmsStandardNode> nodes = standardService.queryStandardNodes(standardId,level);
        return ResultGenerator.genSuccessResult(nodes);
    }

    /**
     * 更新节点属性
     * @param property
     * @return
     */
    @PutMapping("/nodeProperty")
    public Result updateNodeProperty(@RequestBody Map<String,String> property){
        String type = property.get("type");
        String propertyId = property.get("id");
        String propertyValue = property.get("value");
        if("string".equals(type)){
            standardService.updateNodeStringPropertyValue(propertyId,propertyValue);
        }
        return ResultGenerator.genSuccessResult();
    }

    /**
     * 新增适用性库
     * @param applicability
     * @return
     */
    @PostMapping("/applicability")
    public Result saveApplicabilityLibary(@RequestBody IsmsStandard applicability){
        standardService.createApplicabilityLibary(applicability);
        return ResultGenerator.genSuccessResult();
    }
}
