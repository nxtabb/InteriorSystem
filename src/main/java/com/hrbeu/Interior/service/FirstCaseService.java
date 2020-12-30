package com.hrbeu.Interior.service;

import com.hrbeu.Interior.pojo.FirstCase;

import java.util.List;

public interface FirstCaseService {
    Integer queryAllCount();
    List<FirstCase> queryByPage(Integer pageIndex, Integer i);
    List<FirstCase> queryByPageAndName(Integer pageIndex, Integer pageSize, String name);
    Integer queryCountByName(String name);
    FirstCase queryFirstCaseById(Integer firstCaseId);
}
