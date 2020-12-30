package com.hrbeu.Interior.dao;

import com.hrbeu.Interior.pojo.Standard;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StandardDao {
    List<Standard> queryByCondition(@Param("age") Integer age, @Param("grade") Integer grade,@Param("money") Integer money,@Param("pet") Integer pet);
    List<Standard> queryAll();
}
