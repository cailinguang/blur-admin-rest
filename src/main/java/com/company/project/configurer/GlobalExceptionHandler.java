package com.company.project.configurer;

import com.company.project.core.Result;
import com.company.project.core.ServiceException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by clg on 2018/4/18.
 */
@EnableWebMvc
@RestControllerAdvice
public class GlobalExceptionHandler {
    private final Logger logger = LoggerFactory.getLogger(GlobalExceptionHandler.class);

    /**
     * 系统异常处理，比如：404,500
     * @param req
     * @param resp
     * @param e
     * @return
     * @throws Exception
     */
    @ExceptionHandler(value = Throwable.class)
    public Result defaultErrorHandler(HttpServletRequest req, Exception e) throws Exception {
        Result result = new Result();
        if (e instanceof ServiceException) {//业务失败的异常，如“账号或密码错误”
            result.setCode(HttpServletResponse.SC_INTERNAL_SERVER_ERROR).setMessage(e.getMessage());
            logger.info(e.getMessage());
        } else if (e instanceof NoHandlerFoundException) {
            result.setCode(HttpServletResponse.SC_NOT_FOUND).setMessage("接口 [" + req.getRequestURI() + "] 不存在");
        } else if (e instanceof ServletException) {
            result.setCode(HttpServletResponse.SC_INTERNAL_SERVER_ERROR).setMessage(e.getMessage());
        } else {
            result.setCode(HttpServletResponse.SC_INTERNAL_SERVER_ERROR).setMessage("接口 [" + req.getRequestURI() + "] 内部错误，请联系管理员");
            String message = e.getMessage();
            logger.error(message, e);
        }

        return result;
    }
}
