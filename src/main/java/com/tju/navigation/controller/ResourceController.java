package com.tju.navigation.controller;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.service.ResourceService;
import com.tju.navigation.service.UserService;
import com.tju.navigation.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/05/06
 */
@Controller
public class ResourceController extends BaseController {
    @Autowired
    private ResourceService resourceService;

    @Autowired
    private UserService userService;

    /**
     * 进入所有资源分类浏览页面
     *
     * @param type
     * @return
     */
    @RequestMapping("/resource/more/{type}")
    public String more(@PathVariable("type") String type) {
        return "resource/index";
    }

    /**
     * 根据异步请求给定的参数查询对应类型的资源并返回
     * 如果type为-1表示查询所有资源···
     *
     * @param type 资源类型
     * @return
     */
    @ResponseBody
    @RequestMapping("/resource/getResourceByType")
    public Object getResourceByType(String type) {
        start();
        try {
            List<Resource> resourceList;
            if ("-1".equals(type)) {
                resourceList = resourceService.getAllResource();
            } else {
                resourceList = resourceService.getResourcesByType(type);
            }
//            根据资源的贡献者id查询到资源贡献者用户名并赋值
//            for (Resource resource : resourceList) {
//                User user = userService.getUserById(resource.getContributorid());
//                resource.setContributorname(user.getUsername());
//            }
            resourceList = ResourceUtil.resourceContributoridToStr(resourceList,userService);

            data(resourceList);
            success(true);
        } catch (Exception e) {
            success(false);
        }
        return end();
    }
}