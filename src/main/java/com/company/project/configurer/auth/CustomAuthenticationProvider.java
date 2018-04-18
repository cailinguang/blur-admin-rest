package com.company.project.configurer.auth;

import com.company.project.core.ServiceException;
import com.company.project.dao.UserMapper;
import com.company.project.model.User;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

/**
 * Created by clg on 2018/4/18.
 */
@Component
public class CustomAuthenticationProvider implements AuthenticationProvider {

    @Autowired
    private UserMapper userMapper;

    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        // 获取认证的用户名 & 密码
        String username = authentication.getName();
        String password = authentication.getCredentials().toString();

        User param = new User();
        param.setUsername(username);
        User user = userMapper.selectOne(param);

        if(user==null){
            throw new BadCredentialsException("用户名或者密码错误!");
        }

        String md5pass = DigestUtils.md5Hex(username+"@"+password);
        if(!md5pass.equals(user.getPassword())){
            throw new BadCredentialsException("用户名或者密码错误!");
        }


        // 这里设置权限和角色
        ArrayList<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add( new SimpleGrantedAuthority("ROLE_ADMIN") );
        authorities.add( new SimpleGrantedAuthority("AUTH_WRITE") );
        // 生成令牌
        Authentication auth = new UsernamePasswordAuthenticationToken(username, password, authorities);
        return auth;
    }

    // 是否可以提供输入类型的认证服务
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}