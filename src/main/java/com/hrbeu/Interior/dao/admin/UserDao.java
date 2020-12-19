package com.hrbeu.Interior.dao.admin;

import com.hrbeu.Interior.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

public interface UserDao {
    User queryUser(String username);
    int countUsers(String username);
    int addUser(User user);
    int updateUser(@Param("username") String username, @Param("password") String password, @Param("nickname") String nickname, @Param("email") String email, @Param("lastEditTime")Date lastEditTime);
}
