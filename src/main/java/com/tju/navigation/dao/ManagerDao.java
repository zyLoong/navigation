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
     * 获取所有未审核资源
     *
     * @return
     */
    List<Resource> getUnauditedResources();

    /**
     * 根据资源ID更新资源的url、resourcetype、status
     *
     * @param resourceList
     */
    void auditedResources(List<Resource> resourceList);
}
