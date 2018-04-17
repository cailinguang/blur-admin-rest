package com.company.project.service.impl;

import com.company.project.dao.DeptMapper;
import com.company.project.model.Dept;
import com.company.project.service.DeptService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/04/17.
 */
@Service
@Transactional
public class DeptServiceImpl extends AbstractService<Dept> implements DeptService {
    @Resource
    private DeptMapper deptMapper;

}
