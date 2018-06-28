package com.company.project.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.*;

@Table(name = "evaluation_libary")
public class EvaluationLibary {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    private String name;

    private String description;

    private String status;

    private String type;

    @Column(name = "applicability_id")
    private String applicabilityId;

    @Column(name = "create_time")
    private Date createTime;

    @Column(name="evaluation_type")
    private String evaluationType;

    private String creator;


    @Transient
    private List<EvaluationLibaryNode> selectNodes = new ArrayList();

    @Transient
    private boolean canEdit = false;

    public List<EvaluationLibaryNode> getSelectNodes() {
        return selectNodes;
    }

    public void setSelectNodes(List<EvaluationLibaryNode> selectNodes) {
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
     * @return status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return applicability_id
     */
    public String getApplicabilityId() {
        return applicabilityId;
    }

    /**
     * @param applicabilityId
     */
    public void setApplicabilityId(String applicabilityId) {
        this.applicabilityId = applicabilityId;
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

    public String getEvaluationType() {
        return evaluationType;
    }

    public void setEvaluationType(String evaluationType) {
        this.evaluationType = evaluationType;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public boolean isCanEdit() {
        return canEdit;
    }

    public void setCanEdit(boolean canEdit) {
        this.canEdit = canEdit;
    }
}