package com.hrbeu.Interior.pojo;

import java.util.Date;

public class User {
    private Integer userId;
    private String username;
    private String password;
    private String email;
    private Date createTime;
    private Date lastEditTime;
    private Integer isDelete;
    private String nickname;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getLastEditTime() {
        return lastEditTime;
    }

    public void setLastEditTime(Date lastEditTime) {
        this.lastEditTime = lastEditTime;
    }

    public Integer getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(Integer isDelete) {
        this.isDelete = isDelete;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }
    public User(){

    }
    public User(Integer userId, String username, String password, String email, Date createTime, Date lastEditTime, Integer isDelete, String nickname) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.email = email;
        this.createTime = createTime;
        this.lastEditTime = lastEditTime;
        this.isDelete = isDelete;
        this.nickname = nickname;
    }
}
