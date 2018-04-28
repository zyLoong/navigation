package com.tju.navigation.dao;

import com.tju.navigation.bean.User;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/04/17
 */
public interface UserDao {
    /**
     * 根据用户名从数据库中查询用户
     *
     * @param username 要查询的用户的用户名
     * @return User
     */
    User getUserByUsername(String username);

    /**
     * 保存用户信息，只保存用户对象中的 username、password、email信息，其他的自动生成
     *
     * @param user 要保存的用户
     * @return SQL语句执行影响记录数
     */
    int saveUser(User user);

    /**
     * 根据用户名和密码查询用户
     *
     * @param loginUser 用户登陆信息
     * @return User
     */
    User getUser(User loginUser);

    /**
     * 查询所有用户信息
     *
     * @return
     */
    List<User> getAllUsers();

}