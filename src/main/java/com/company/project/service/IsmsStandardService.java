package com.company.project.service;
import com.company.project.model.IsmsStandard;
import com.company.project.core.Service;
import com.company.project.model.IsmsStandardNode;

import java.util.List;


/**
 * Created by CodeGenerator on 2018/06/01.
 */
public interface IsmsStandardService extends Service<IsmsStandard> {
    /**
     * 查询库node tree
     * @param standardId
     * @param level 数深度,-1无限制
     * @return
     */
    List<IsmsStandardNode> queryStandardNodes(String standardId,int level);

    void updateNodeStringPropertyValue(String propertyId , String propertyValue);

    void createApplicabilityLibary(IsmsStandard applicability);
}
