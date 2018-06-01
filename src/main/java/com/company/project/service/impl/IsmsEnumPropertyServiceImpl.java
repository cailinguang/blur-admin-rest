package com.company.project.service.impl;

import com.company.project.dao.IsmsEnumPropertyMapper;
import com.company.project.model.IsmsEnumProperty;
import com.company.project.service.IsmsEnumPropertyService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
@Service
@Transactional
public class IsmsEnumPropertyServiceImpl extends AbstractService<IsmsEnumProperty> implements IsmsEnumPropertyService {
    @Resource
    private IsmsEnumPropertyMapper ismsEnumPropertyMapper;

}
