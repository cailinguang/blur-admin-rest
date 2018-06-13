package com.company.project.web;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import com.company.project.model.Attachment;
import com.company.project.service.AttachmentService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import tk.mybatis.mapper.entity.Condition;

import javax.annotation.Resource;
import javax.websocket.server.PathParam;
import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
* Created by CodeGenerator on 2018/06/13.
*/
@RestController
@RequestMapping("/api/attachment")
public class AttachmentController {
    @Resource
    private AttachmentService attachmentService;

    @GetMapping
    public Result list(@RequestParam(defaultValue = "0") Integer page, @RequestParam(defaultValue = "0") Integer size) {
        PageHelper.startPage(page, size);
        List<Attachment> list = attachmentService.findAll();
        PageInfo pageInfo = new PageInfo(list);
        return ResultGenerator.genSuccessResult(pageInfo);
    }

    @PostMapping
    public Result add(@RequestParam("file")MultipartFile file,@RequestParam("bizId")String bizId) throws Exception{
        String path = getClass().getClassLoader().getResource(File.separator).getPath() + File.separator + UUID.randomUUID().toString();
        File pathFile = new File(path);
        if(!pathFile.getParentFile().exists()){
            pathFile.getParentFile().mkdirs();
        }
        FileCopyUtils.copy(file.getBytes(),pathFile);

        Attachment attachment = new Attachment();
        attachment.setBizId(bizId);
        attachment.setCreateTime(new Date());
        attachment.setName(file.getOriginalFilename());
        attachment.setPath(path);
        attachment.setSize(file.getSize());
        attachmentService.save(attachment);
        return ResultGenerator.genSuccessResult(attachment.getId());
    }

    @GetMapping("/biz")
    public Result queryAttachment(@PathParam("bizId") String bizId){
        Condition condition = new Condition(Attachment.class);
        condition.createCriteria().andEqualTo("bizId",bizId);
        return ResultGenerator.genSuccessResult(attachmentService.findAllByCondition(condition));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable("id") String id) throws Exception{
        Attachment att = attachmentService.findById(id);
        FileUtils.forceDeleteOnExit(new File(att.getPath()));
        attachmentService.deleteById(id);
        return ResultGenerator.genSuccessResult();
    }

    @PutMapping("/{id}")
    public Result update(@PathVariable("id") String id,@RequestBody Attachment attachment) {
        attachment.setId(id);
        attachmentService.update(attachment);
        return ResultGenerator.genSuccessResult();
    }

    @GetMapping("/{id}")
    public Result detail(@PathVariable String id) {
        Attachment attachment = attachmentService.findById(id);
        return ResultGenerator.genSuccessResult(attachment);
    }

}
