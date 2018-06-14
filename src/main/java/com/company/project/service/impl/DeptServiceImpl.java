package com.company.project.service.impl;

import com.company.project.core.AbstractService;
import com.company.project.core.ServiceException;
import com.company.project.dao.DeptMapper;
import com.company.project.dao.UserMapper;
import com.company.project.model.Dept;
import com.company.project.model.User;
import com.company.project.service.DeptService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tk.mybatis.mapper.entity.Condition;
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
    @Resource
    private UserMapper userMapper;

    @Override
    public List<Dept> findDeptByParent(String parent) {
        Example example = new Example(Dept.class);
        example.createCriteria().andEqualTo("parent",parent);
        return deptMapper.selectByCondition(example);
    }

    @Override
    public void deleteDept(String deptId) {
        User userCondition = new User();
        userCondition.setDeptId(deptId);
        List<User> deptUsers = userMapper.select(userCondition);
        if(deptUsers.size()>0){
            throw new ServiceException("部门下还有用户，不能删除!");
        }
        Condition count = new Condition(Dept.class);
        count.createCriteria().andEqualTo("parent",deptId);
        int childrenCount = deptMapper.selectCountByCondition(count);
        if(childrenCount>0){
            throw new ServiceException("请先删除子部门!");
        }
        deptMapper.deleteByPrimaryKey(deptId);
    }
}
