package com.hrbeu.Interior.dao;

import com.hrbeu.Interior.pojo.SecondCase;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SecondCaseDao {
    List<SecondCase> querySecondCaseByIdAndPage(@Param("leftLimit") Integer leftLimit,@Param("rightLimit") Integer rightLimit,@Param("firstCaseId") Integer firstCaseId);
    Integer querySecondCaseCountById(Integer firstCaseId);
    SecondCase queryById(Integer secondCaseId);
}
