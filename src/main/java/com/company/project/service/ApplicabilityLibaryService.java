package com.company.project.service;

import com.company.project.core.Service;
import com.company.project.model.ApplicabilityLibary;
import com.company.project.model.ApplicabilityLibaryNode;
import com.company.project.model.StandardLibaryNode;

import java.util.List;

/**
 * Created by clg on 2018/6/7.
 */
public interface ApplicabilityLibaryService extends Service<ApplicabilityLibary>{

    void createApplicabilityLibary(ApplicabilityLibary applicability);

    List<ApplicabilityLibaryNode> queryStandardNodes(String applicabilityId, int level);

    void updateApplicabilityLibary(ApplicabilityLibary applicability);

    void deleteLibary(String id);
}
