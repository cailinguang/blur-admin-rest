package com.company.project.service;
import com.company.project.model.Dept;
import com.company.project.core.Service;

import java.util.List;


/**
 * Created by CodeGenerator on 2018/04/23.
 */
public interface DeptService extends Service<Dept> {
    List<Dept> findDeptByParent(String parent);

    public void deleteDept(String deptId);
}
