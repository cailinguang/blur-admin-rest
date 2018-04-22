package com.conpany.project;

import org.apache.commons.codec.digest.DigestUtils;

/**
 * Created by clg on 2018/4/21.
 */
public class PasswordTest {
    public static void main(String[] args){
        String username = "admin";
        String password = "admin";
        String p = DigestUtils.md5Hex(username+"@"+password);

        System.out.println(p);
    }
}
