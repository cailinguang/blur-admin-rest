package com.company.project.model;

import javax.persistence.*;

@Table(name = "ISMS_ENUM_PROPERTY")
public class IsmsEnumProperty {
    @Id
    @Column(name = "PROPERTY_ID")
    @GeneratedValue(generator = "UUID")
    private String propertyId;

    @Column(name = "NODE_ID")
    private String nodeId;

    @Column(name = "NAME")
    private String name;

    @Column(name = "READONLY")
    private Integer readonly;

    @Column(name = "VALUE")
    private String value;

    @Column(name = "ENUM_TYPE")
    private String enumType;

    @Column(name = "STANDARD_ID")
    private String standardId;

    /**
     * @return PROPERTY_ID
     */
    public String getPropertyId() {
        return propertyId;
    }

    /**
     * @param propertyId
     */
    public void setPropertyId(String propertyId) {
        this.propertyId = propertyId;
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
     * @return READONLY
     */
    public Integer getReadonly() {
        return readonly;
    }

    /**
     * @param readonly
     */
    public void setReadonly(Integer readonly) {
        this.readonly = readonly;
    }

    /**
     * @return VALUE
     */
    public String getValue() {
        return value;
    }

    /**
     * @param value
     */
    public void setValue(String value) {
        this.value = value;
    }

    /**
     * @return ENUM_TYPE
     */
    public String getEnumType() {
        return enumType;
    }

    /**
     * @param enumType
     */
    public void setEnumType(String enumType) {
        this.enumType = enumType;
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
}