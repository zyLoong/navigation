package com.tju.navigation.service;
/**
 * Created by Administrator on 2018/04/25.
 */

import com.tju.navigation.bean.Resource;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/04/25
 */
public interface ManagerService {
    /**
     * 查询所有未审核资源
     *
     * @return
     */
    List<Resource> getUnauditedResources();

    /**
     * 根据资源ID更新资源的url、resourcetype、status
     * @param resourceList
     */
    void auditedResources(List<Resource> resourceList);

    /**
     //     * 根据贡献者id（即用户id）查询该用户提交过的所有资源
     //     * @param contributorid 贡献者id
     //     * @return 该用户提交过的所有资源
     //     */
//    List<Resource> getResourcesByContributorid(Integer contributorid);
//
}