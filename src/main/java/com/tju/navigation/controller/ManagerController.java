package com.tju.navigation.controller;

import com.tju.navigation.bean.User;
import com.tju.navigation.service.ManagerService;
import com.tju.navigation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Map;

/**
 * @author Administrator
 * @date 2018/04/25
 */
@Controller
public class ManagerController extends BaseController {
    @Autowired
    private ManagerService managerService;

    @Autowired
    private UserService userService;

    /**
     * 带着用户列表转到后台管理页面
     *
     * @param map
     * @return
     */
    @RequestMapping("/manager/index")
    public String toManagerIndex(Map<String, Object> map) {
        List<User> userList = userService.getAllUsers();
        map.put("userList", userList);
        return "manager/index";
    }
//
//    /**
//     * 用户进入用户信息页面后发出异步请求加载该用户提交过的资源列表
//     * 如果用户未曾提交过任何资源，则提示:暂未提交任何资源
//     *
//     * @return 返回对应用户提交过的所有资源
//     */
//    @ResponseBody
//    @RequestMapping("/manager/getResourcesByUsername")
//    public Object getResourcesByUsername(Integer contributorid) {
//        start();
//        try {
//            List<Resource> resourcesList = userService.getResourcesByContributorid(contributorid);
//            if (resourcesList.size() == 0) {
//                success(false);
//                message("暂未提交任何资源");
//                return end();
//            }
//            data(resourcesList);
//            success(true);
//        } catch (Exception e) {
//            success(false);
//            message(Const.SYSTEM_ERROR);
//            e.printStackTrace();
//        }
//        return end();
//    }
}