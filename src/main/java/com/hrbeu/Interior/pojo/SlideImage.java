package com.hrbeu.Interior.pojo;

public class SlideImage {
    private Integer slideImageId;
    private String slideImagePath;
    private String slideImageTitle1;
    private String slideImageTitle2;
    public SlideImage(){

    }

    public SlideImage(Integer slideImageId, String slideImagePath, String slideImageTitle1, String slideImageTitle2) {
        this.slideImageId = slideImageId;
        this.slideImagePath = slideImagePath;
        this.slideImageTitle1 = slideImageTitle1;
        this.slideImageTitle2 = slideImageTitle2;
    }

    public Integer getSlideImageId() {
        return slideImageId;
    }

    public void setSlideImageId(Integer slideImageId) {
        this.slideImageId = slideImageId;
    }

    public String getSlideImagePath() {
        return slideImagePath;
    }

    public void setSlideImagePath(String slideImagePath) {
        this.slideImagePath = slideImagePath;
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
}
