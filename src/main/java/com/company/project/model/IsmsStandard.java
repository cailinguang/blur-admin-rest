package com.company.project.model;

import javax.persistence.*;
import java.util.Date;

@Table(name = "ISMS_STANDARD")
public class IsmsStandard {
    @Id
    @Column(name = "STANDARD_ID")
    @GeneratedValue(generator = "UUID")
    private String standardId;

    @Column(name = "STANDARD_TYPE")
    private String standardType;

    @Column(name = "IS_EVALUATION")
    private Integer isEvaluation;

    @Column(name = "NAME")
    private String name;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "ARCHIVED")
    private Integer archived;

    @Column(name = "CREATE_TIME")
    private Date createTime;

    /**
     * @return STANDARD_ID
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

    /**
     * @return STANDARD_TYPE
     */
    public String getStandardType() {
        return standardType;
    }

    /**
     * @param standardType
     */
    public void setStandardType(String standardType) {
        this.standardType = standardType;
    }

    /**
     * @return IS_EVALUATION
     */
    public Integer getIsEvaluation() {
        return isEvaluation;
    }

    /**
     * @param isEvaluation
     */
    public void setIsEvaluation(Integer isEvaluation) {
        this.isEvaluation = isEvaluation;
    }

    /**
     * @return NAME
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
     * @return DESCRIPTION
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
     * @return ARCHIVED
     */
    public Integer getArchived() {
        return archived;
    }

    /**
     * @param archived
     */
    public void setArchived(Integer archived) {
        this.archived = archived;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}