package com.tju.navigation.controller;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.bean.User;
import com.tju.navigation.service.ManagerService;
import com.tju.navigation.service.UserService;
import com.tju.navigation.util.Const;
import com.tju.navigation.util.ResourceUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.IOException;
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
     * 校验用户，如果不是管理员用户则跳转到首页
     *
     * @param map
     * @return
     */
    @RequestMapping("/manager/index")
    public String toManagerIndex(Map<String, Object> map, HttpSession session) {
        User user = (User) session.getAttribute(Const.LOGIN_USER);
        if (user == null || "2".equals(user.getUsertype())) {
            return "index";
        } else {
            List<User> userList = userService.getAllUsers();
            map.put("userList", userList);
            return "manager/index";
        }
    }

    /**
     * 获取所有未审核资源并跳转到资源审核界面
     *
     * @param map
     * @return
     */
    @RequestMapping("/manager/toResourcesAudited")
    public String toResources(Map<String, Object> map) {
        List<Resource> resourceList = managerService.getUnauditedResources();


        map.put("resourceList", resourceList);
        return "manager/auditedResources";
    }

    /**
     * 根据页面审核信息来更新资源，主要是更新资源的状态信息（通过/不通过）
     * 注：有可能在审核页面对资源信息的url和esourceType进行修改
     *
     * @param json
     * @return
     * @throws IOException
     */
    @ResponseBody
    @RequestMapping(value = "/manager/auditedResources")
    public Object auditedResources(ResourceUtil json) throws IOException {
        start();

        try {
            List<Resource> resourceList = json.getResourceList();
            managerService.auditedResources(resourceList);
            success(true);
        } catch (Exception e) {
            success(false);
            e.printStackTrace();
        }
        return null;
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