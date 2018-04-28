package com.tju.navigation.dao;
/**
 * Created by Administrator on 2018/04/25.
 */

import com.tju.navigation.bean.Resource;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/04/25
 */
public interface ManagerDao {
    /**
     * 根据贡献者id（即用户id）查询该用户提交过的所有资源
     *
     * @param contributorid 贡献者id
     * @return 该用户提交过的所有资源
     */
    List<Resource> getResourcesByContributorid(Integer contributorid);
}