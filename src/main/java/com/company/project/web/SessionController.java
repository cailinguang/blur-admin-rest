package com.company.project.web;

import com.company.project.core.ResultGenerator;
import com.company.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * Created by clg on 2018/4/17.
 */
@RestController
public class SessionController {

    public static final String SESSION_USER_KEY = "USER";

    @Autowired
    UserService userService;

    @RequestMapping("/api/logout")
    public Object logout(HttpSession session){
        session.removeAttribute(SESSION_USER_KEY);
        session.invalidate();

        return ResultGenerator.genSuccessResult();
    }
}
