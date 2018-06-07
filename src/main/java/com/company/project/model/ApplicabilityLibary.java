package com.company.project.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Table(name = "applicability_libary")
public class ApplicabilityLibary {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    private String name;

    private String description;

    private String type;

    @Column(name = "create_time")
    private Date createTime;

    @Column(name = "standard_id")
    private String standardId;

    @Transient
    private List<ApplicabilityLibaryNode> selectNodes = new ArrayList();

    public List<ApplicabilityLibaryNode> getSelectNodes() {
        return selectNodes;
    }

    public void setSelectNodes(List<ApplicabilityLibaryNode> selectNodes) {
        this.selectNodes = selectNodes;
    }

    /**
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return create_time
     */
    public Date getCreateTime() {
        return createTime;
    }

    /**
     * @param createTime
     */
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    /**
     * @return standard_id
     */
    public String getStandardId() {
        return standardId;
    }

    /**
     * @param standardId
     */
    public void setStandardId(String standardId) {
        this.standardId = standardId;
    }
}