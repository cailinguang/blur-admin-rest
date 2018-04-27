package com.company.project.configurer;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.access.AccessDeniedHandler;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by clg on 2018/4/19.
 */
public class AccessDeniedErrorHandler implements AuthenticationEntryPoint, AccessDeniedHandler {

    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {
        accessDenied(request,response);
    }


    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {
        accessDenied(request,response);
    }

    protected void accessDenied(HttpServletRequest request, HttpServletResponse response) throws IOException{
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "application/json;charset=UTF-8");

        response.setStatus(HttpServletResponse.SC_OK);

        Result result = new Result();
        result.setCode(HttpServletResponse.SC_FORBIDDEN);
        result.setMessage("Forbidden");

        response.getWriter().write(result.toString());
    }
}