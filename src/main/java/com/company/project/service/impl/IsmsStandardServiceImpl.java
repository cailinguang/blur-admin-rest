package com.company.project.service.impl;

import com.company.project.dao.IsmsStandardMapper;
import com.company.project.model.IsmsStandard;
import com.company.project.service.IsmsStandardService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
@Service
@Transactional
public class IsmsStandardServiceImpl extends AbstractService<IsmsStandard> implements IsmsStandardService {
    @Resource
    private IsmsStandardMapper ismsStandardMapper;

}
