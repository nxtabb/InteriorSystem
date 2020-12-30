package com.hrbeu.Interior.service;

import com.hrbeu.Interior.pojo.Standard;

import java.util.List;

public interface StandardService {
    List<Standard> queryByCondition(String ageStr, String moneyStr, String gradeStr, String petStr);
    List<Standard> queryAll();
}
