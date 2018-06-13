package com.company.project.model;

import java.util.Date;
import javax.persistence.*;

public class Attachment {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    private String name;

    private Long size;

    @Column(name = "biz_id")
    private String bizId;

    @Column(name = "create_time")
    private Date createTime;

    private String path;

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
     * @return size
     */
    public Long getSize() {
        return size;
    }

    /**
     * @param size
     */
    public void setSize(Long size) {
        this.size = size;
    }

    /**
     * @return biz_id
     */
    public String getBizId() {
        return bizId;
    }

    /**
     * @param bizId
     */
    public void setBizId(String bizId) {
        this.bizId = bizId;
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
     * @return path
     */
    public String getPath() {
        return path;
    }

    /**
     * @param path
     */
    public void setPath(String path) {
        this.path = path;
    }
}