package com.company.project.service;
import com.company.project.model.IsmsStandard;
import com.company.project.core.Service;
import com.company.project.model.IsmsStandardNode;

import java.util.List;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
public interface IsmsStandardService extends Service<IsmsStandard> {

    List<IsmsStandardNode> queryStandardNodes(String standardId);

    void updateNodeStringPropertyValue(String propertyId , String propertyValue);
}
