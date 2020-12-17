package com.hrbeu.Interior.pojo;

import java.util.Date;

public class FirstCase {
    private Integer firstCaseId;
    private String firstCaseName;
    private String firstCaseImage;
    private Date createTime;
    private Date lastEditTime;
    public FirstCase(){

    }

    public Integer getFirstCaseId() {
        return firstCaseId;
    }

    public void setFirstCaseId(Integer firstCaseId) {
        this.firstCaseId = firstCaseId;
    }

    public String getFirstCaseName() {
        return firstCaseName;
    }

    public void setFirstCaseName(String firstCaseName) {
        this.firstCaseName = firstCaseName;
    }

    public String getFirstCaseImage() {
        return firstCaseImage;
    }

    public void setFirstCaseImage(String firstCaseImage) {
        this.firstCaseImage = firstCaseImage;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastEditTime() {
        return lastEditTime;
    }

    public void setLastEditTime(Date lastEditTime) {
        this.lastEditTime = lastEditTime;
    }

    public FirstCase(Integer firstCaseId, String firstCaseName, String firstCaseImage, Date createTime, Date lastEditTime) {
        this.firstCaseId = firstCaseId;
        this.firstCaseName = firstCaseName;
        this.firstCaseImage = firstCaseImage;
        this.createTime = createTime;
        this.lastEditTime = lastEditTime;
    }
}
