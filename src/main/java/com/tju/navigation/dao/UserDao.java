package com.tju.navigation.dao;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.bean.User;
import org.apache.ibatis.annotations.Param;

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

    /**
     * 向资源表中添加数据
     *
     * @param resource
     */
    void addResource(Resource resource);

    /**
     * 根据贡献者id（即用户id）查询该用户提交过的所有资源
     *
     * @param contributorid 贡献者id
     * @return 该用户提交过的所有资源
     */
    List<Resource> getResourcesByContributorid(Integer contributorid);

    /**
     * 资源链接被点击时发送一个异步请求，请求携带一个链接ID的参数
     * 将该链接资源被点击次数加一
     *
     * @param id
     */
    void resourceFrequencyPlus(String id);

    /**
     * 给指定用户增加用户积分
     *
     * @param id 用户id
     * @param i  用户积分增加数值
     */
    void pointsPlus(@Param("id") String id,@Param("i") int i);
}