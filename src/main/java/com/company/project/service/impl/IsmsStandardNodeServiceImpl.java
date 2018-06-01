package com.company.project.service.impl;

import com.company.project.dao.IsmsStandardNodeMapper;
import com.company.project.model.IsmsStandardNode;
import com.company.project.service.IsmsStandardNodeService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
@Service
@Transactional
public class IsmsStandardNodeServiceImpl extends AbstractService<IsmsStandardNode> implements IsmsStandardNodeService {
    @Resource
    private IsmsStandardNodeMapper ismsStandardNodeMapper;

}
