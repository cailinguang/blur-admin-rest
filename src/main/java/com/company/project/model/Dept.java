package com.company.project.model;

import javax.persistence.*;

public class Dept {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    private String parent;

    private String name;

    private String code;

    private Integer position;

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

    public String getParent() {
        return parent;
    }

    public void setParent(String parent) {
        this.parent = parent;
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
     * @return code
     */
    public String getCode() {
        return code;
    }

    /**
     * @param code
     */
    public void setCode(String code) {
        this.code = code;
    }

    /**
     * @return position
     */
    public Integer getPosition() {
        return position;
    }

    /**
     * @param position
     */
    public void setPosition(Integer position) {
        this.position = position;
    }
}