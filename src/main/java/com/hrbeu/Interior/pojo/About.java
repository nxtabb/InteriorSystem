package com.hrbeu.Interior.pojo;

public class About {
    private Integer aboutId;
    private String content;
    private String aboutImage;
    private String phone1;
    private String phone2;
    private String companyEmail;
    private String companyAddress;
    public About(){

    }

    public About(Integer aboutId, String content, String aboutImage, String phone1, String phone2, String companyEmail, String companyAddress) {
        this.aboutId = aboutId;
        this.content = content;
        this.aboutImage = aboutImage;
        this.phone1 = phone1;
        this.phone2 = phone2;
        this.companyEmail = companyEmail;
        this.companyAddress = companyAddress;
    }

    public Integer getAboutId() {
        return aboutId;
    }

    public void setAboutId(Integer aboutId) {
        this.aboutId = aboutId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAboutImage() {
        return aboutImage;
    }

    public void setAboutImage(String aboutImage) {
        this.aboutImage = aboutImage;
    }

    public String getPhone1() {
        return phone1;
    }

    public void setPhone1(String phone1) {
        this.phone1 = phone1;
    }

    public String getPhone2() {
        return phone2;
    }

    public void setPhone2(String phone2) {
        this.phone2 = phone2;
    }

    public String getCompanyEmail() {
        return companyEmail;
    }

    public void setCompanyEmail(String companyEmail) {
        this.companyEmail = companyEmail;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }
}
