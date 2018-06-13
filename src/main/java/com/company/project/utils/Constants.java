package com.company.project.utils;

/**
 * Created by clg on 2018/6/11.
 */
public class Constants {
    public final static String VDA_TYPE_CHAPTER = "vda_chapter";
    public final static String VDA_TYPE_QUESTION = "vda_question";
    public final static String VDA_TYPE_LEVEL = "vda_level";
    public final static String VDA_TYPE_CONTROL = "vda_control";


    /**信息安全联络员*/
    public static final String ROLE_SECURITY_LIAISON = "liaison";
    /**CISO*/
    public static final String ROLE_CISO = "ciso";

    /**待处理*/
    public static final String EVALUATION_QUESTION_STATUS_PENDING = "0";
    /**处理中*/
    public static final String EVALUATION_QUESTION_STATUS_PROCESSING = "1";
    /**已提交*/
    public static final String EVALUATION_QUESTION_STATUS_SUBMITTED = "2";
    /**复核完成*/
    public static final String EVALUATION_QUESTION_STATUS_REVIEW = "3";

    /**新任务*/
    public static final String EVALUATION_STATUS_NEW = "0";
    /**评审中*/
    public static final String EVALUATION_STATUS_PROCESSING = "1";
    /**已完成*/
    public static final String EVALUATION_STATUS_END = "2";
}
