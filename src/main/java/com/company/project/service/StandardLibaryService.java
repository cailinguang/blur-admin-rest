package com.company.project.service;
import com.company.project.model.StandardLibary;
import com.company.project.core.Service;
import com.company.project.model.StandardLibaryNode;

import java.util.List;


/**
 * Created by CodeGenerator on 2018/06/07.
 */
public interface StandardLibaryService extends Service<StandardLibary> {

    List<StandardLibaryNode> queryStandardNodes(String standardId, int level);

    void updateNode(StandardLibaryNode standardLibaryNode);
}
