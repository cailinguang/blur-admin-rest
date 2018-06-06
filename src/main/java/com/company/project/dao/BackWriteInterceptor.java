package com.company.project.dao;

import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.plugin.*;

import javax.persistence.Id;
import java.lang.reflect.Field;
import java.sql.Statement;
import java.util.Properties;

/**
 * Created by clg on 2018/6/6.
 */
@Intercepts({
        @Signature(type=StatementHandler.class, method="update", args={ Statement.class }),
        @Signature(type=Executor.class, method="update", args={MappedStatement.class, Object.class})
})
public class BackWriteInterceptor implements Interceptor {


    private static final ThreadLocal<Boolean> LOCAL_BACK_WRITE = new ThreadLocal<Boolean>();


    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        Object target = invocation.getTarget();
        if (target instanceof StatementHandler) {
            return doInterceptStatementHandler(invocation, (StatementHandler) target);
        } else if (target instanceof Executor) {
            Object[] args = invocation.getArgs();
            return doInterceptExecutor(invocation, (MappedStatement) args[0], args[1]);
        }
        return invocation.proceed();
    }

    private Object doInterceptExecutor(Invocation invocation, MappedStatement ms, Object argument)
            throws Throwable {
        if (ms.getSqlCommandType().equals(SqlCommandType.INSERT) && getPkField(argument.getClass())!=null) {
            LOCAL_BACK_WRITE.set(true);
        }
        try {
            return invocation.proceed();
        } catch (Exception e) {
            throw e;
        } finally {
            LOCAL_BACK_WRITE.remove();
        }
    }

    private String getPkField(Class c){
        Field[] fields = c.getDeclaredFields();

        String pkField = null;
        for(int i=0;i<fields.length;i++){
            if(fields[i].getAnnotation(Id.class)!=null){
                pkField = fields[i].getName();
            }
        }
        return pkField;
    }

    private Object doInterceptStatementHandler(Invocation invocation, StatementHandler statementHandler)
            throws Throwable {
        Boolean localBackWrite = LOCAL_BACK_WRITE.get();
        BoundSql boundSql = statementHandler.getBoundSql();
        Object parameterObject = boundSql.getParameterObject();
        if (localBackWrite != null && localBackWrite ) {

            String pk = getPkField(parameterObject.getClass());
            String id = (String) boundSql.getAdditionalParameter( pk + "_bind");
            Field idField = parameterObject.getClass().getDeclaredField(pk);
            idField.setAccessible(true);
            idField.set(parameterObject,id);

            LOCAL_BACK_WRITE.set(false);
        }
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object target) {
        if (target instanceof StatementHandler || target instanceof Executor) {
            return Plugin.wrap(target, this);
        } else {
            return target;
        }
    }

    @Override
    public void setProperties(Properties properties) {
    }

}
