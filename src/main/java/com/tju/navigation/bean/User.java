package com.tju.navigation.bean;

/**
 * @author Administrator
 * @date 2018/04/17
 */
@SuppressWarnings("unused")
public class User {
    private Integer id;
    private String username;
    private String password;
    private String email;
    private String createdate;
    /**
     * 用户类型，可能有三种： 用户、管理员、超级管理员
     */
    private String usertype;
    private Integer points;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    public String getCreatedate() {
        return createdate;
    }

    public void setCreatedate(String createdate) {
        this.createdate = createdate;
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
                ", createdate='" + createdate + '\'' +
                ", usertype='" + usertype + '\'' +
                ", points=" + points +
                '}';
    }
}