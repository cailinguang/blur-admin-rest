package com.company.project.service.impl;

import com.company.project.dao.AttachmentMapper;
import com.company.project.model.Attachment;
import com.company.project.service.AttachmentService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/06/13.
 */
@Service
@Transactional
public class AttachmentServiceImpl extends AbstractService<Attachment> implements AttachmentService {
    @Resource
    private AttachmentMapper attachmentMapper;

}
