package com.company.project.service.impl;

import com.company.project.core.AbstractService;
import com.company.project.model.EvaluationLibary;
import com.company.project.service.EvaluationService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by clg on 2018/6/7.
 */
@Service
@Transactional
public class EvaluationServiceImpl extends AbstractService<EvaluationLibary> implements EvaluationService{

}
