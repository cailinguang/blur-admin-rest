package com.company.project.model;

import com.company.project.model.property.Properties;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table(name = "ISMS_STANDARD_NODE")
public class IsmsStandardNode extends Properties{
    @Id
    @Column(name = "NODE_ID")
    @GeneratedValue(generator = "UUID")
    private String nodeId;

    @Column(name = "STANDARD_ID")
    private String standardId;

    @Column(name = "NODE_TYPE")
    private String nodeType;

    @Column(name = "NAME")
    private String name;

    @Column(name = "NODE_POSITION")
    private Integer nodePosition;

    @Column(name = "PARENT_NODE_ID")
    private String parentNodeId;

    @Transient
    private final List<IsmsStandardNode> children = new ArrayList();

    public void addChild(IsmsStandardNode child)
    {
        this.children.add(child);
    }

    public List<IsmsStandardNode> getChildren() {
        return children;
    }

    /**
     * @return NODE_ID
     */
    public String getNodeId() {
        return nodeId;
    }

    /**
     * @param nodeId
     */
    public void setNodeId(String nodeId) {
        this.nodeId = nodeId;
    }

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
     * @return NODE_TYPE
     */
    public String getNodeType() {
        return nodeType;
    }

    /**
     * @param nodeType
     */
    public void setNodeType(String nodeType) {
        this.nodeType = nodeType;
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
     * @return NODE_POSITION
     */
    public Integer getNodePosition() {
        return nodePosition;
    }

    /**
     * @param nodePosition
     */
    public void setNodePosition(Integer nodePosition) {
        this.nodePosition = nodePosition;
    }

    /**
     * @return PARENT_NODE_ID
     */
    public String getParentNodeId() {
        return parentNodeId;
    }

    /**
     * @param parentNodeId
     */
    public void setParentNodeId(String parentNodeId) {
        this.parentNodeId = parentNodeId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        IsmsStandardNode that = (IsmsStandardNode) o;

        if (!nodeId.equals(that.nodeId)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return nodeId.hashCode();
    }
}