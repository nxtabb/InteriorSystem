package com.hrbeu.Interior.pojo;

import java.util.Date;

public class SlideImage {
    private Integer slideImageId;
    private String slideImage;
    private String slideImageTitle1;
    private String slideImageTitle2;
    private Date createTime;
    public SlideImage(){

    }

    public Integer getSlideImageId() {
        return slideImageId;
    }

    public void setSlideImageId(Integer slideImageId) {
        this.slideImageId = slideImageId;
    }

    public String getSlideImage() {
        return slideImage;
    }

    public void setSlideImage(String slideImage) {
        this.slideImage = slideImage;
    }

    public String getSlideImageTitle1() {
        return slideImageTitle1;
    }

    public void setSlideImageTitle1(String slideImageTitle1) {
        this.slideImageTitle1 = slideImageTitle1;
    }

    public String getSlideImageTitle2() {
        return slideImageTitle2;
    }

    public void setSlideImageTitle2(String slideImageTitle2) {
        this.slideImageTitle2 = slideImageTitle2;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public SlideImage(Integer slideImageId, String slideImage, String slideImageTitle1, String slideImageTitle2, Date createTime) {
        this.slideImageId = slideImageId;
        this.slideImage = slideImage;
        this.slideImageTitle1 = slideImageTitle1;
        this.slideImageTitle2 = slideImageTitle2;
        this.createTime = createTime;
    }
}
