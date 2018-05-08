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
    List<Resource> getResourcesByContributorid(String contributorid);

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
    void pointsPlus(@Param("id") String id, @Param("i") int i);

    /**
     * 根据用户ID从collection表中查询用户收藏资源列表
     *
     * @param userId
     * @return
     */
    List<Integer> getUserCollectionResourceids(String userId);

    /**
     * 根据资源id列表获取资源列表
     *
     * @param list
     * @return
     */
    List<Resource> getResourcesByResourceIds(List<Integer> list);

    /**
     * 根据资源id获取资源贡献者用户
     *
     * @param id
     * @return
     */
    String getUserIdByResourceId(String id);

    /**
     * 根据用户ID获取用户对象
     *
     * @param userid
     * @return
     */
    User getUserById(String userid);

    /**
     * 用户收藏资源，向收藏表插入记录
     *
     * @param id
     * @param resourceid
     */
    void collectionResource(@Param("userid") String id, @Param("resourceid") Integer resourceid);

    /**
     * 取消收藏
     *
     * @param userid
     * @param resourceid
     */
    void cancelCollection(@Param("userid") String userid, @Param("resourceid") Integer resourceid);
}