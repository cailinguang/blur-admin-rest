package com.company.project.utils;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.Collection;

/**
 * Created by clg on 2018/6/11.
 */
public class SecurityUtils {

    public static boolean hasRole(String role){
        Collection<? extends GrantedAuthority> authorities = SecurityContextHolder.getContext().getAuthentication().getAuthorities();
        for(GrantedAuthority authority:authorities){
            if(authority.getAuthority().equals("ROLE_"+role)){
                return true;
            }
        }
        return false;
    }
}
