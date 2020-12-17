package com.hrbeu.Interior.service.admin;

import com.hrbeu.Interior.pojo.User;


public interface UserService {
    User checkUser(String username, String password);
    int userCounts(String username);
    int addUser(User user);
}
