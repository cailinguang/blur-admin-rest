package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.StandardLibary;
import com.company.project.model.StandardLibaryNode;
import com.company.project.service.StandardLibaryService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
* Created by CodeGenerator on 2018/06/07.
*/
@RestController
@RequestMapping("/api/standard/libary")
public class StandardLibaryController {
    @Resource
    private StandardLibaryService standardLibaryService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<StandardLibary> list = standardLibaryService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    /**
     * 查询标准库节点
     * @param standardId
     * @return
     */
    @GetMapping("/standardNodes")
    public Result queryStandardNodes(@RequestParam String standardId,@RequestParam(defaultValue = "0") int level){
        List<StandardLibaryNode> nodes = standardLibaryService.queryStandardNodes(standardId,level);
        return ResultGenerator.genSuccessResult(nodes);
    }

    /**
     * 更新节点属性
     * @param property
     * @return
     */
    @PutMapping("/node")
    public Result updateNodeProperty(@RequestBody Map<String,String> node){
        String nodeId = node.get("id");
        String nodeDescription = node.get("description");
        String nodeName = node.get("name");

        StandardLibaryNode standardLibaryNode = new StandardLibaryNode();
        standardLibaryNode.setId(nodeId);
        standardLibaryNode.setDescription(nodeDescription);
        standardLibaryNode.setName(nodeName);

        standardLibaryService.updateNode(standardLibaryNode);

        return ResultGenerator.genSuccessResult();
    }

    @PostMapping("/node")
    public Result add(@RequestBody StandardLibaryNode node) {
        standardLibaryService.saveNode(node);
        return ResultGenerator.genSuccessResult(node);
    }

    @DeleteMapping("/node/{id}")
    public Result delete(@PathVariable("id") String id) {
        standardLibaryService.deleteNode(id);
        return ResultGenerator.genSuccessResult();
    }

}
