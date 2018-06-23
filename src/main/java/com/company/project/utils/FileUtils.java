package com.company.project.utils;


import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;

/**
 * Created by clg on 2018/6/23.
 */
public class FileUtils {

    public static String getPath(){
        Class cls = FileUtils.class;
        ClassLoader loader=cls.getClassLoader();
        //获得类的全名，包括包名
        String clsName=cls.getName();
        //将类的class文件全名改为路径形式
        String clsPath= clsName.replace(".", "/")+".class";
        //调用ClassLoader的getResource方法，传入包含路径信息的类文件名
        java.net.URL url =loader.getResource(clsPath);
        //从URL对象中获取路径信息
        String realPath=url.getPath();
        //去掉路径信息中的协议名"file:"
        int pos=realPath.indexOf("file:");
        if (pos>-1) {
            realPath=realPath.substring(pos+5);
        }

        //去掉路径信息最后包含类文件信息的部分，得到类所在的路径
        pos=realPath.indexOf(clsPath);
        realPath=realPath.substring(0,pos-1);
        //如果类文件被打包到JAR等文件中时，去掉对应的JAR等打包文件名
        System.out.println(realPath);
        if (realPath.endsWith("!")) {
            realPath=realPath.substring(0,realPath.lastIndexOf("/"));
        }
        if (realPath.endsWith("!/BOOT-INF")) {
            realPath=realPath.substring(0,realPath.lastIndexOf("/"));
            if (realPath.endsWith("!")) {
                realPath=realPath.substring(0,realPath.lastIndexOf("/"));
            }
        }

        java.io.File file = new java.io.File(realPath);
        realPath = file.getAbsolutePath();

        try {
            realPath=java.net.URLDecoder.decode (realPath,"utf-8");
        }catch (Exception e){
            throw new RuntimeException(e);
        }

        return realPath;

    }

    public static void main(String[] args) throws Exception{
        System.out.println(File.separator);
        System.out.println(getPath());

        String realPath = "/D:/git_workspace/blue-admin/blur-admin-rest/target/blur-admin-rest-1.0.jar!/BOOT-INF/classes!";
        if (realPath.endsWith("!")) {
            realPath=realPath.substring(0,realPath.lastIndexOf("/"));
        }
        if (realPath.endsWith("!/BOOT-INF")) {
            realPath=realPath.substring(0,realPath.lastIndexOf("/"));
            if (realPath.endsWith("!")) {
                realPath=realPath.substring(0,realPath.lastIndexOf("/"));
            }
        }
        System.out.println(realPath);
    }
}
