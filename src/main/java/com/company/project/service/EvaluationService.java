package com.company.project.service;

import com.company.project.core.Service;
import com.company.project.model.EvaluationLibary;
import com.company.project.model.EvaluationLibaryNode;

import java.util.List;

/**
 * Created by clg on 2018/6/7.
 */
public interface EvaluationService extends Service<EvaluationLibary> {
    /**评审中*/
    public static String EVALUATION_STATUS_PROCESSING = "1";
    /**已完成*/
    public static String EVALUATION_STATUS_END = "2";

    void deleteLibary(String id);

    List<EvaluationLibaryNode> queryStandardNodes(String evaluationId, int level);

    void createEvaluation(EvaluationLibary evaluation);

    void updateEvaluation(EvaluationLibary applicability);
}
