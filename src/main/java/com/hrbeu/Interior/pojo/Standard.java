package com.hrbeu.Interior.pojo;

public class Standard {
    private Integer standardId;
    private Integer minAge;
    private Integer maxAge;
    private Integer minMoney;
    private Integer maxMoney;
    private Integer minGrade;
    private Integer maxGrade;
    private Integer isPet;
    private FirstCase firstCase;

    public Standard() {
    }

    public Standard(Integer standardId, Integer minAge, Integer maxAge, Integer minMoney, Integer maxMoney, Integer minGrade, Integer maxGrade, Integer isPet, FirstCase firstCase) {
        this.standardId = standardId;
        this.minAge = minAge;
        this.maxAge = maxAge;
        this.minMoney = minMoney;
        this.maxMoney = maxMoney;
        this.minGrade = minGrade;
        this.maxGrade = maxGrade;
        this.isPet = isPet;
        this.firstCase = firstCase;
    }

    public FirstCase getFirstCase() {
        return firstCase;
    }

    public void setFirstCase(FirstCase firstCase) {
        this.firstCase = firstCase;
    }

    public Integer getStandardId() {
        return standardId;
    }

    public void setStandardId(Integer standardId) {
        this.standardId = standardId;
    }


    public Integer getMinAge() {
        return minAge;
    }

    public void setMinAge(Integer minAge) {
        this.minAge = minAge;
    }

    public Integer getMaxAge() {
        return maxAge;
    }

    public void setMaxAge(Integer maxAge) {
        this.maxAge = maxAge;
    }

    public Integer getMinMoney() {
        return minMoney;
    }

    public void setMinMoney(Integer minMoney) {
        this.minMoney = minMoney;
    }

    public Integer getMaxMoney() {
        return maxMoney;
    }

    public void setMaxMoney(Integer maxMoney) {
        this.maxMoney = maxMoney;
    }

    public Integer getMinGrade() {
        return minGrade;
    }

    public void setMinGrade(Integer minGrade) {
        this.minGrade = minGrade;
    }

    public Integer getMaxGrade() {
        return maxGrade;
    }

    public void setMaxGrade(Integer maxGrade) {
        this.maxGrade = maxGrade;
    }

    public Integer getIsPet() {
        return isPet;
    }

    public void setIsPet(Integer isPet) {
        this.isPet = isPet;
    }
}
