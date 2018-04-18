package com.company.project.core;

import javax.servlet.http.HttpServletResponse;

/**
 * 响应结果生成工具
 */
public class ResultGenerator {
    private static final String DEFAULT_SUCCESS_MESSAGE = "SUCCESS";

    public static Result genSuccessResult() {
        return new Result()
                .setCode(HttpServletResponse.SC_OK)
                .setMessage(DEFAULT_SUCCESS_MESSAGE);
    }

    public static Result genSuccessResult(Object data) {
        return new Result()
                .setCode(HttpServletResponse.SC_OK)
                .setMessage(DEFAULT_SUCCESS_MESSAGE)
                .setData(data);
    }

    public static Result genFailResult(String message) {
        return new Result()
                .setCode(HttpServletResponse.SC_INTERNAL_SERVER_ERROR)
                .setMessage(message);
    }
}
