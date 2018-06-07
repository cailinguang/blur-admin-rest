package com.company.project.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table(name = "standard_libary_node")
public class StandardLibaryNode {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    @Column(name = "parent_id")
    private String parentId;

    @Column(name = "standard_id")
    private String standardId;

    private String type;

    private String name;

    private String description;

    @Column(name = "node_position")
    private Integer nodePosition;

    @Transient
    private List<StandardLibaryNode> children = new ArrayList();

    public void addChildren(StandardLibaryNode node){
        this.children.add(node);
    }

    public List<StandardLibaryNode> getChildren(){
        return this.children;
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

    public Integer getNodePosition() {
        return nodePosition;
    }

    public void setNodePosition(Integer nodePosition) {
        this.nodePosition = nodePosition;
    }
}