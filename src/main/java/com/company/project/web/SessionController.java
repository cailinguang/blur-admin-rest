package com.company.project.web;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;

/**
 * Created by clg on 2018/4/17.
 */
@RestController
public class SessionController {

    @RequestMapping("/login")
    public void login(HttpSession session,String username, String password){

    }
}
