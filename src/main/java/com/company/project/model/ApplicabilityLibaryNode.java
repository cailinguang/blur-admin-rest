package com.company.project.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table(name = "applicability_libary_node")
public class ApplicabilityLibaryNode {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    @Column(name = "parent_id")
    private String parentId;

    @Column(name = "applicability_id")
    private String applicabilityId;

    private String type;

    private String name;

    private String description;

    @Column(name = "target_value")
    private Float targetValue;

    @Column(name = "node_position")
    private Integer nodePosition;

    @Column(name = "standard_node_id")
    private String standardNodeId;


    @Transient
    private Boolean applicability;

    @Transient
    private List<ApplicabilityLibaryNode> children = new ArrayList();

    public void addChildren(ApplicabilityLibaryNode node){
        this.children.add(node);
    }

    public List<ApplicabilityLibaryNode> getChildren(){
        return this.children;
    }
    

    public Boolean getApplicability() {
        return applicability;
    }

    public void setApplicability(Boolean applicability) {
        this.applicability = applicability;
    }

    public Integer getNodePosition() {
        return nodePosition;
    }

    public void setNodePosition(Integer nodePosition) {
        this.nodePosition = nodePosition;
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

    public String getStandardNodeId() {
        return standardNodeId;
    }

    public void setStandardNodeId(String standardNodeId) {
        this.standardNodeId = standardNodeId;
    }

    public void setChildren(List<ApplicabilityLibaryNode> children) {
        this.children = children;
    }
}