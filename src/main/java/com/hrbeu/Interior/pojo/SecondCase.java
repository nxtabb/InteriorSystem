package com.hrbeu.Interior.pojo;

import java.util.Date;

public class SecondCase {
    private Integer secondCaseId;
    private String secondCaseDescription;
    private String secondCaseImage;
    private FirstCase firstCase;
    private Date createTime;
    private Date lastEditTime;

    public SecondCase() {
    }

    public Integer getSecondCaseId() {
        return secondCaseId;
    }

    public void setSecondCaseId(Integer secondCaseId) {
        this.secondCaseId = secondCaseId;
    }

    public String getSecondCaseDescription() {
        return secondCaseDescription;
    }

    public void setSecondCaseDescription(String secondCaseDescription) {
        this.secondCaseDescription = secondCaseDescription;
    }

    public String getSecondCaseImage() {
        return secondCaseImage;
    }

    public void setSecondCaseImage(String secondCaseImage) {
        this.secondCaseImage = secondCaseImage;
    }

    public FirstCase getFirstCase() {
        return firstCase;
    }

    public void setFirstCase(FirstCase firstCase) {
        this.firstCase = firstCase;
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

    public SecondCase(Integer secondCaseId, String secondCaseDescription, String secondCaseImage, FirstCase firstCase, Date createTime, Date lastEditTime) {
        this.secondCaseId = secondCaseId;
        this.secondCaseDescription = secondCaseDescription;
        this.secondCaseImage = secondCaseImage;
        this.firstCase = firstCase;
        this.createTime = createTime;
        this.lastEditTime = lastEditTime;
    }
}
