package com.company.project.model;

import com.alibaba.fastjson.annotation.JSONField;

import java.util.Date;
import javax.persistence.*;

@Table(name = "task_log")
public class TaskLog {
    @Id
    @GeneratedValue(generator = "UUID")
    private String id;

    private String name;

    private Date time;

    private String user;

    @Transient
    private String userName;
    @Transient
    private String deptName;

    private String dept;

    private String question;

    @Column(name = "question_severity")
    private String questionSeverity;

    @Column(name = "question_status")
    private String questionStatus;

    @Column(name = "control_json")
    @JSONField(serialize = false)
    private byte[] controlJson;

    @Transient
    private String controlStr;

    @Column(name="evaluation_id")
    private String evaluationId;

    private String type;

    private String chapter;

    public String getEvaluationId() {
        return evaluationId;
    }

    public void setEvaluationId(String evaluationId) {
        this.evaluationId = evaluationId;
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
     * @return time
     */
    public Date getTime() {
        return time;
    }

    /**
     * @param time
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * @return user
     */
    public String getUser() {
        return user;
    }

    /**
     * @param user
     */
    public void setUser(String user) {
        this.user = user;
    }

    /**
     * @return dept
     */
    public String getDept() {
        return dept;
    }

    /**
     * @param dept
     */
    public void setDept(String dept) {
        this.dept = dept;
    }

    /**
     * @return question
     */
    public String getQuestion() {
        return question;
    }

    /**
     * @param question
     */
    public void setQuestion(String question) {
        this.question = question;
    }

    /**
     * @return question_severity
     */
    public String getQuestionSeverity() {
        return questionSeverity;
    }

    /**
     * @param questionSeverity
     */
    public void setQuestionSeverity(String questionSeverity) {
        this.questionSeverity = questionSeverity;
    }

    /**
     * @return question_status
     */
    public String getQuestionStatus() {
        return questionStatus;
    }

    /**
     * @param questionStatus
     */
    public void setQuestionStatus(String questionStatus) {
        this.questionStatus = questionStatus;
    }

    /**
     * @return control_json
     */
    public byte[] getControlJson() {
        return controlJson;
    }

    /**
     * @param controlJson
     */
    public void setControlJson(byte[] controlJson) {
        this.controlJson = controlJson;
    }

    public String getControlStr() {
        return controlStr;
    }

    public void setControlStr(String controlStr) {
        this.controlStr = controlStr;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getDeptName() {
        return deptName;
    }

    public void setDeptName(String deptName) {
        this.deptName = deptName;
    }

    public String getType() {
        return type;
    }

    public String getChapter() {
        return chapter;
    }

    public void setChapter(String chapter) {
        this.chapter = chapter;
    }
}