package com.company.project.service.impl;

import com.company.project.dao.MenuMapper;
import com.company.project.model.Menu;
import com.company.project.service.MenuService;
import com.company.project.core.AbstractService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;


/**
 * Created by CodeGenerator on 2018/04/17.
 */
@Service
@Transactional
public class MenuServiceImpl extends AbstractService<Menu> implements MenuService {
    @Resource
    private MenuMapper menuMapper;

}
