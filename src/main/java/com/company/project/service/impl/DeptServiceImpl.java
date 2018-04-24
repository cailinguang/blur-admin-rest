package com.company.project.service.impl;

import com.company.project.dao.DeptMapper;
import com.company.project.model.Dept;
import com.company.project.service.DeptService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Example;

import javax.annotation.Resource;
import java.util.List;


/**
 * Created by CodeGenerator on 2018/04/23.
 */
@Service
@Transactional
public class DeptServiceImpl extends AbstractService<Dept> implements DeptService {
    @Resource
    private DeptMapper deptMapper;

    @Override
    public List<Dept> findDeptByParent(String parent) {
        Example example = new Example(Dept.class);
        example.createCriteria().andEqualTo("parent",parent);
        return deptMapper.selectByCondition(example);
    }
}
