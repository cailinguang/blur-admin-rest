package com.company.project.utils;

/**
 * Created by clg on 2018/6/11.
 */
public class Constants {
    public final static String VDA_TYPE_CHAPTER = "vda_chapter";
    public final static String VDA_TYPE_QUESTION = "vda_question";
    public final static String VDA_TYPE_LEVEL = "vda_level";
    public final static String VDA_TYPE_CONTROL = "vda_control";

    public static final String USER_STATUS_UN_LOCK = "1";
    public static final String USER_STATUS_LOCK = "2";


    /**信息安全联络员*/
    public static final String ROLE_SECURITY_LIAISON = "Information Security Coordinator";
    /**CISO*/
    public static final String ROLE_CISO = "ciso";
    /**ADMIN */
    public static final String ROLE_ADMIN = "System Administrator";
    /**项目总监*/
    public static final String ROLE_BUSSINESS_OWNER = "Business Owner";

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


    public static final String EVALUATION_CONTROL_COMPLIANCE_LEVEL_YES = "0";
    public static final String EVALUATION_CONTROL_COMPLIANCE_LEVEL_NO = "1";
    public static final String EVALUATION_CONTROL_COMPLIANCE_LEVEL_NA = "2";


    public static final String EVALUATION_LEVEL_APPROLED_YES = "1";
    public static final String EVALUATION_LEVEL_APPROLED_NO = "0";
}
