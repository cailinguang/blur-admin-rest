package com.company.project.service.impl;

import com.company.project.dao.IsmsStringPropertyMapper;
import com.company.project.model.IsmsStringProperty;
import com.company.project.service.IsmsStringPropertyService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
@Service
@Transactional
public class IsmsStringPropertyServiceImpl extends AbstractService<IsmsStringProperty> implements IsmsStringPropertyService {
    @Resource
    private IsmsStringPropertyMapper ismsStringPropertyMapper;

}
