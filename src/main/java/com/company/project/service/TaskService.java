package com.company.project.service;

import com.company.project.model.EvaluationLibary;
import com.company.project.model.EvaluationLibaryNode;
import com.company.project.model.TaskLog;

import java.util.List;

/**
 * Created by clg on 2018/6/11.
 */
public interface TaskService {
    List<EvaluationLibary> findAll();

    List<EvaluationLibaryNode> queryNodes(String evaluationId, int level);

    EvaluationLibaryNode queryChildrenNodes(String parentId);

    void updateTask(EvaluationLibary evaluation,String type);

    List<TaskLog> queryAllTaskLog(String evaluationId);
}
