package com.tju.navigation.util;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.bean.User;
import com.tju.navigation.service.UserService;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author Administrator
 * @date 2018/05/02
 */
@Component
public class ResourceUtil {

    /**
     * 将资源状态代号转为字符串
     *
     * @param list
     * @return
     */
    public static List<Resource> resourceStatusNumToStr(List<Resource> list) {
        for (Resource resource : list) {
            switch (resource.getStatus()) {
                case "2": {
                    resource.setStatus("审核中");
                    break;
                }
                case "1": {
                    resource.setStatus("审核通过");
                    break;
                }
                case "0": {
                    resource.setStatus("审核未通过");
                    break;
                }
                default:
            }
        }
        return list;
    }

    /**
     * 将资源的类型代号转变为字符串
     *
     * @param list
     * @return
     */
    public static List<Resource> resourceTypeNumToStr(List<Resource> list) {
        for (Resource resource : list) {
            switch (resource.getResourcetype()) {
                case "0": {
                    resource.setResourcetype("其他");
                    break;
                }
                case "1": {
                    resource.setResourcetype("工作");
                    break;
                }
                case "2": {
                    resource.setResourcetype("工具");
                    break;
                }
                case "3": {
                    resource.setResourcetype("开源");
                    break;
                }
                case "4": {
                    resource.setResourcetype("社区");
                    break;
                }
                case "5": {
                    resource.setResourcetype("进阶");
                    break;
                }
                case "6": {
                    resource.setResourcetype("常用");
                    break;
                }
                case "7": {
                    resource.setResourcetype("博客");
                    break;
                }
                default:
            }
        }
        return list;
    }

    /**
     * 根据资源贡献者id为贡献者名赋值
     * @param resourceList
     * @return
     */
    public static List<Resource> resourceContributoridToStr(List<Resource> resourceList,UserService userService) {
        for (Resource resource : resourceList) {
            User user = userService.getUserById(resource.getContributorid());
            resource.setContributorname(user.getUsername());
        }
        return resourceList;
    }
}

