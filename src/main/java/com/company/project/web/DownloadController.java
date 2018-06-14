package com.company.project.web;

import com.company.project.model.Attachment;
import com.company.project.service.AttachmentService;
import org.springframework.stereotype.Controller;
import org.springframework.util.StreamUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created by clg on 2018/6/14.
 */
@Controller
public class DownloadController {
    @Resource
    private AttachmentService attachmentService;

    @GetMapping("/attachemnt/download/{id}")
    public void download(@PathVariable String id, HttpServletRequest request, HttpServletResponse response) {
        InputStream in = null;
        OutputStream out = null;
        try{
            Attachment attachment = attachmentService.findById(id);

            String userAgent = request.getHeader("User-Agent");
            String fileName= attachment.getName();
            if (null != userAgent && ( -1 != userAgent.indexOf("MSIE") || -1 != userAgent.indexOf("Trident") || -1 != userAgent.indexOf("Edge"))) {
                // ie
                fileName = java.net.URLEncoder.encode(fileName, "UTF8");
            } else {
                // 火狐,chrome等
                fileName = new String(fileName.getBytes("UTF-8"), "iso-8859-1");
            }
            response.setHeader("Content-disposition", String.format("attachment; filename=\"%s\"", fileName));
            response.setContentType("application/vnd.ms-excel;charset=utf-8");
            response.setCharacterEncoding("UTF-8");
            in = new FileInputStream(attachment.getPath());
            out = response.getOutputStream();
            StreamUtils.copy(in,out);
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try {
                in.close();
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
