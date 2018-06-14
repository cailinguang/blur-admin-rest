package com.company.project.utils;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.commons.lang3.RandomStringUtils;

/**
 * Created by clg on 2018/5/22.
 */
public class PasswordUtils {
    private final static String lower_word = "abcdefghijklmnopqrstuvwxyz";
    private final static String upper_word = lower_word.toUpperCase();
    private final static String special_word = "!@#$%&<>.-=+";

    public final static String DEFAULT_PASSWORD = "!password";

    public static String randomPassword(){
        while (true){
            String pass = RandomStringUtils.random(8,lower_word+upper_word+special_word);
            
            if(!isHaveChar(pass,lower_word)){
                continue;
            }
            if(!isHaveChar(pass,upper_word)){
                continue;
            }
            if(!isHaveChar(pass,special_word)){
                continue;
            }
            return pass;
        }
    }

    public static String digestPassword(String loginName,String password){
        return DigestUtils.md5Hex(loginName + "@" + password);
    }
    
    private static boolean isHaveChar(String pass,String chars){
        for(int i=0;i<pass.length();i++){
            if(chars.indexOf(pass.charAt(i))>-1){
                return true;
            }
        }
        return false;
    }
}
