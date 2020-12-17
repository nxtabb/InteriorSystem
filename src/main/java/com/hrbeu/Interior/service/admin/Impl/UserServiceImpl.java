package com.hrbeu.Interior.service.admin.Impl;

import com.hrbeu.Interior.dao.admin.UserDao;
import com.hrbeu.Interior.service.admin.UserService;
import com.hrbeu.Interior.pojo.User;
import com.hrbeu.Interior.utils.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User checkUser(String username, String password) {
        User user = userDao.queryUser(username);
        if(user==null){
            return null;
        }else {
            if(user.getPassword().equals(MD5Util.md5(password))){
                return user;
            }else {
                return null;
            }
        }

    }
    @Override
    public int userCounts(String username) {
        return userDao.countUsers(username);
    }
    @Override
    public int addUser(User user) {
        Date createTime = new Date();
        Date lastEditTime = new Date();
        Integer isDelete = 0;
        user.setCreateTime(createTime);
        user.setLastEditTime(lastEditTime);
        user.setIsDelete(isDelete);
        return userDao.addUser(user);
    }
}
