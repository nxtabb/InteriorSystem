package com.hrbeu.Interior.pojo;

import java.util.Date;

public class Material {
    private Integer materialId;
    private Double materialPrice;
    private String materialName;
    private String materialImage;
    private Date createTime;
    private Date lastEditTime;
    private SecondCase secondCase;

    public Material() {
    }

    public Integer getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public Double getMaterialPrice() {
        return materialPrice;
    }

    public void setMaterialPrice(Double materialPrice) {
        this.materialPrice = materialPrice;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public String getMaterialImage() {
        return materialImage;
    }

    public void setMaterialImage(String materialImage) {
        this.materialImage = materialImage;
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

    public SecondCase getSecondCase() {
        return secondCase;
    }

    public void setSecondCase(SecondCase secondCase) {
        this.secondCase = secondCase;
    }

    public Material(Integer materialId, Double materialPrice, String materialName, String materialImage, Date createTime, Date lastEditTime, SecondCase secondCase) {
        this.materialId = materialId;
        this.materialPrice = materialPrice;
        this.materialName = materialName;
        this.materialImage = materialImage;
        this.createTime = createTime;
        this.lastEditTime = lastEditTime;
        this.secondCase = secondCase;
    }
}
