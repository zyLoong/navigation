package com.tju.navigation.service.impl;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.dao.ResourceDao;
import com.tju.navigation.service.ResourceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/05/06
 */
@Service
public class ResourceServiceImpl implements ResourceService {
    @Autowired
    private ResourceDao resourceDao;

    @Override
    public List<Resource> getAllResource() {
        return resourceDao.getAllResource();
    }

    @Override
    public List<Resource> getResourcesByType(String type) {
        return resourceDao.getResourcesByType(type);
    }
}