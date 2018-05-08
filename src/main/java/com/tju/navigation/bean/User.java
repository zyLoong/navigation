package com.tju.navigation.bean;

import java.io.Serializable;

/**
 * @author Administrator
 * @date 2018/04/17
 */
@SuppressWarnings("unused")
public class User implements Serializable {
    private static final long serialVersionUID = 7003364717118011773L;

    private String id;
    private String username;
    private String password;
    private String email;
    private String createtime;
    private String usertype;
    private Integer points;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public Integer getPoints() {
        return points;
    }

    public void setPoints(Integer points) {
        this.points = points;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", createtime='" + createtime + '\'' +
                ", usertype='" + usertype + '\'' +
                ", points=" + points +
                '}';
    }
}