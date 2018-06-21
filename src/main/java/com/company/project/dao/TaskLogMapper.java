package com.company.project.dao;

import com.company.project.core.Mapper;
import com.company.project.model.TaskLog;

import java.util.List;

public interface TaskLogMapper extends Mapper<TaskLog> {

    public List<TaskLog> queryAllTask(String evaluationId);
}