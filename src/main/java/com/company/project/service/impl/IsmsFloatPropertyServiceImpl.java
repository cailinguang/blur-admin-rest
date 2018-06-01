package com.company.project.service.impl;

import com.company.project.dao.IsmsFloatPropertyMapper;
import com.company.project.model.IsmsFloatProperty;
import com.company.project.service.IsmsFloatPropertyService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
@Service
@Transactional
public class IsmsFloatPropertyServiceImpl extends AbstractService<IsmsFloatProperty> implements IsmsFloatPropertyService {
    @Resource
    private IsmsFloatPropertyMapper ismsFloatPropertyMapper;

}
