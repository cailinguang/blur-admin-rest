package com.company.project.configurer.jwt.filter;

import com.company.project.core.Result;
import com.company.project.core.ResultGenerator;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by clg on 2018/4/18.
 */
public class JWTAuthenticationFilter extends GenericFilterBean {

    @Override
    public void doFilter(ServletRequest request,
                         ServletResponse response,
                         FilterChain filterChain)
            throws IOException, ServletException {
        HttpServletResponse servletResponse = (HttpServletResponse)response;

        Authentication authentication = null;
        try {
            authentication = TokenAuthenticationService.getAuthentication((HttpServletRequest)request);
        } catch (Exception e) {
            servletResponse.setCharacterEncoding("UTF-8");
            servletResponse.setHeader("Content-type", "application/json;charset=UTF-8");
            servletResponse.setStatus(HttpServletResponse.SC_OK);

            Result result = new Result()
                    .setCode(401)
                    .setMessage(e.getMessage());

            response.getWriter().write(result.toString());
            return;
        }

        SecurityContextHolder.getContext().setAuthentication(authentication);

        filterChain.doFilter(request,response);
    }
}