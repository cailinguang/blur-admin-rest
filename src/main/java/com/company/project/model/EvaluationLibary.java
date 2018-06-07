package com.company.project.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "evaluation_libary")
public class EvaluationLibary {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    private String name;

    private String description;

    private String status;

    @Column(name = "applicability_id")
    private String applicabilityId;

    @Column(name = "create_time")
    private Date createTime;

    @Column(name="evaluation_type")
    private String evaluationType;

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
}