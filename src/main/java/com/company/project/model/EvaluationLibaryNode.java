package com.company.project.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table(name = "evaluation_libary_node")
public class EvaluationLibaryNode {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    @Column(name = "parent_id")
    private String parentId;

    @Column(name = "evaluation_id")
    private String evaluationId;

    private String type;

    private String name;

    private String description;

    @Column(name = "target_value")
    private Float targetValue;

    @Column(name = "assign_user")
    private String assignUser;

    private String status;

    @Column(name = "node_position")
    private Integer nodePosition;

    @Column(name = "severity_level")
    private String severityLevel;

    @Column(name = "level_is_approved")
    private String levelIsApproved;

    @Column(name = "compliance_level")
    private String complianceLevel;

    @Column(name = "applicability_node_id")
    private String applicabilityNodeId;


    @Transient
    private List<EvaluationLibaryNode> children = new ArrayList();

    @Transient
    private Boolean applicability;

    @Transient
    private User assign;

    @Transient
    private List<Attachment> attachments;

    @Transient
    private double scope;

    public double getScope() {
        return scope;
    }

    public void setScope(double scope) {
        this.scope = scope;
    }

    public List<Attachment> getAttachments() {
        return attachments;
    }

    public void setAttachments(List<Attachment> attachments) {
        this.attachments = attachments;
    }

    public User getAssign() {
        return assign;
    }

    public void setAssign(User assign) {
        this.assign = assign;
    }

    public Boolean getApplicability() {
        return applicability;
    }

    public void setApplicability(Boolean applicability) {
        this.applicability = applicability;
    }

    public void addChildren(EvaluationLibaryNode node){
        this.children.add(node);
    }

    public List<EvaluationLibaryNode> getChildren() {
        return children;
    }

    public void setChildren(List<EvaluationLibaryNode> children) {
        this.children = children;
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
     * @return parent_id
     */
    public String getParentId() {
        return parentId;
    }

    /**
     * @param parentId
     */
    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    /**
     * @return evaluation_id
     */
    public String getEvaluationId() {
        return evaluationId;
    }

    /**
     * @param evaluationId
     */
    public void setEvaluationId(String evaluationId) {
        this.evaluationId = evaluationId;
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
     * @return target_value
     */
    public Float getTargetValue() {
        return targetValue;
    }

    /**
     * @param targetValue
     */
    public void setTargetValue(Float targetValue) {
        this.targetValue = targetValue;
    }

    /**
     * @return assign_user
     */
    public String getAssignUser() {
        return assignUser;
    }

    /**
     * @param assignUser
     */
    public void setAssignUser(String assignUser) {
        this.assignUser = assignUser;
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
     * @return severity_level
     */
    public String getSeverityLevel() {
        return severityLevel;
    }

    /**
     * @param severityLevel
     */
    public void setSeverityLevel(String severityLevel) {
        this.severityLevel = severityLevel;
    }

    /**
     * @return level_is_approved
     */
    public String getLevelIsApproved() {
        return levelIsApproved;
    }

    /**
     * @param levelIsApproved
     */
    public void setLevelIsApproved(String levelIsApproved) {
        this.levelIsApproved = levelIsApproved;
    }

    /**
     * @return compliance_level
     */
    public String getComplianceLevel() {
        return complianceLevel;
    }

    /**
     * @param complianceLevel
     */
    public void setComplianceLevel(String complianceLevel) {
        this.complianceLevel = complianceLevel;
    }

    public Integer getNodePosition() {
        return nodePosition;
    }

    public void setNodePosition(Integer nodePosition) {
        this.nodePosition = nodePosition;
    }

    public String getApplicabilityNodeId() {
        return applicabilityNodeId;
    }

    public void setApplicabilityNodeId(String applicabilityNodeId) {
        this.applicabilityNodeId = applicabilityNodeId;
    }
}