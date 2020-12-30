package com.hrbeu.Interior.service;

import com.hrbeu.Interior.pojo.SecondCase;

import java.util.List;

public interface SecondCaseService {
    List<SecondCase> querySecondCaseByIdAndPage(Integer firstCaseId, Integer pageIndex, Integer pageSize);
    Integer querySecondCaseCountById(Integer firstCaseId);
    SecondCase queryById(Integer secondCaseId);
}
