package com.tju.navigation.service.impl;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.dao.ManagerDao;
import com.tju.navigation.dao.UserDao;
import com.tju.navigation.service.ManagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/04/25
 */
@Service
public class ManagerServiceImpl implements ManagerService {
    @Autowired
    private ManagerDao managerDao;

    @Override
    public List<Resource> getUnauditedResources() {
        return managerDao.getUnauditedResources();
    }

    @Override
    public void auditedResources(List<Resource> resourceList) {
        managerDao.auditedResources(resourceList);
    }

//    @Override
//    public List<Resource> getResourcesByContributorid(Integer contributorid) {
//        return managerDao.getResourcesByContributorid(contributorid);
//    }
}