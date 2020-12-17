package com.hrbeu.Interior.dao.admin;

import com.hrbeu.Interior.pojo.User;

public interface UserDao {
    User queryUser(String username);
    int countUsers(String username);
    int addUser(User user);
}
