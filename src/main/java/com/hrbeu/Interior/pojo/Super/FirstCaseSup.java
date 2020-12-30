package com.hrbeu.Interior.pojo.Super;

import com.hrbeu.Interior.pojo.FirstCase;

import java.util.Date;

public class FirstCaseSup {
    private FirstCase firstCase;
    private String imagePath;
    public FirstCaseSup(){

    }
    public FirstCase getFirstCase() {
        return firstCase;
    }

    public void setFirstCase(FirstCase firstCase) {
        this.firstCase = firstCase;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public FirstCaseSup(FirstCase firstCase, String imagePath) {
        this.firstCase = firstCase;
        this.imagePath = imagePath;
    }
}
