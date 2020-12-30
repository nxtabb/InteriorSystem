package com.hrbeu.Interior.pojo.Super;

import com.hrbeu.Interior.pojo.SecondCase;

public class SecondCaseSup {
    private SecondCase secondCase;
    private String path;

    public SecondCaseSup() {
    }

    public SecondCase getSecondCase() {
        return secondCase;
    }

    public void setSecondCase(SecondCase secondCase) {
        this.secondCase = secondCase;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public SecondCaseSup(SecondCase secondCase, String path) {
        this.secondCase = secondCase;
        this.path = path;
    }
}
