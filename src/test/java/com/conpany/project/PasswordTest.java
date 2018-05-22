package com.conpany.project;

import com.company.project.utils.PasswordUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomStringUtils;

/**
 * Created by clg on 2018/4/21.
 */
public class PasswordTest {
    public static void main(String[] args){
        String username = "admin";
        String password = "admin";
        String p = DigestUtils.md5Hex(username+"@"+password);

        System.out.println(p);

        int i = 500;
        while (i>=0) {
            System.out.println(PasswordUtils.randomPassword());
            i--;
        }

    }
}
