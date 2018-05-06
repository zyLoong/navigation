package com.tju.navigation.dao;
/**
 * Created by Administrator on 2018/05/06.
 */

import com.tju.navigation.bean.Resource;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/05/06
 */
public interface ResourceDao {
    /**
     * 获取所有资源（审核通过的）
     *
     * @return
     */
    List<Resource> getAllResource();

    /**
     * 获取所有指定类型的资源（审核通过的）
     *
     * @param type
     * @return
     */
    List<Resource> getResourcesByType(String type);
}