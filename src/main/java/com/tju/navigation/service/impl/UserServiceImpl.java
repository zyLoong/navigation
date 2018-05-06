package com.tju.navigation.service.impl;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.bean.User;
import com.tju.navigation.dao.UserDao;
import com.tju.navigation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import sun.security.util.Resources_it;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/04/19
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public boolean usernameExists(String username) {
        User user = userDao.getUserByUsername(username);
        return user != null;
    }

    @Override
    public int saveUser(User user) {
        return userDao.saveUser(user);
    }

    @Override
    public User getUser(User loginUser) {
        return userDao.getUser(loginUser);
    }

    @Override
    public User getUserById(String userid) {
        return userDao.getUserById(userid);
    }

    @Override
    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    @Override
    public void addResource(Resource resource) {
        userDao.addResource(resource);
    }

    @Override
    public List<Resource> getResourcesByContributorid(Integer contributorid) {
        return userDao.getResourcesByContributorid(contributorid);
    }

    @Override
    public void resourceFrequencyPlus(String id) {
        userDao.resourceFrequencyPlus(id);
    }

    @Override
    public void pointsPlus(String id, int i) {
        userDao.pointsPlus(id, i);
    }

    @Override
    public List<Resource> getUserCollectionResources(User user) {
        String userId = user.getId();
        //        从收藏表中获取收藏的资源id
        List<Integer> list = userDao.getUserCollectionResourceids(userId);
        if (list.size() <= 0) {
            return null;
        }
//        根据资源id获取资源列表
        List<Resource> resourceList = userDao.getResourcesByResourceIds(list);
        return resourceList;
    }

    @Override
    public String getUserIdByResourceId(String id) {
        return userDao.getUserIdByResourceId(id);
    }

    @Override
    public void collectionResource(String id, Integer resourceid) {
        userDao.collectionResource(id, resourceid);

    }

    @Override
    public void cancelCollection(String userid, Integer resourceid) {
        userDao.cancelCollection(userid, resourceid);
    }
}