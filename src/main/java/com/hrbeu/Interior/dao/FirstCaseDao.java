package com.hrbeu.Interior.dao;

import com.hrbeu.Interior.pojo.FirstCase;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FirstCaseDao {
    int queryAllCount();
    List<FirstCase> queryByPage(@Param("leftLimit") Integer leftLimit,@Param("rightLimit") Integer rightLimit);
    List<FirstCase> queryByPageAndName(@Param("leftLimit") Integer leftLimit,@Param("rightLimit") Integer rightLimit,@Param("name") String name);
    Integer queryCountByPageAndName(String name);
    FirstCase queryFirstCaseById(Integer firstCaseId);
}
