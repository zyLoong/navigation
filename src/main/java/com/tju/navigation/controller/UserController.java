package com.tju.navigation.controller;

import com.tju.navigation.bean.User;
import com.tju.navigation.service.UserService;
import com.tju.navigation.util.Const;
import com.tju.navigation.util.MD5Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 用户控制器，执行注册登录等功能
 *
 * @author Administrator
 * @date 2018/04/17
 */
@Controller
public class UserController extends BaseController {
    @Autowired
    private UserService userService;


    /**
     * 转到登录页面
     */
    @RequestMapping("/user/toLogin")
    public String toLogin() {
        return "user/login";
    }

    /**
     * 转到注册页面
     */
    @RequestMapping("/user/toRegist")
    public String toRegist() {
        return "user/regist";
    }


    /**
     * 销毁Session，退出登录
     */
    @RequestMapping("user/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "/index";
    }

    /**
     * 转到用户信息页面
     */
    @RequestMapping("user/userInfo")
    public String userInfo() {
        return "user/userinfo";
    }


    /**
     * 接收用户的登陆信息，
     * 先根据用户名和密码在数据库中进行查询，如果查询不到用户则查询用户名是否存在
     * 如果用户名存在，返回提示信息:用户名或密码错误
     * 如果用户名不存在，返回提示信息：用户名不存在
     */
    @ResponseBody
    @RequestMapping("/user/doLogin")
    public Object doLogin(User loginUser, HttpSession session) {
        start();
        try {
//            先根据用户名和密码在数据库中进行查询
            String password = MD5Util.digest(loginUser.getPassword());
            loginUser.setPassword(password);
            User user = userService.getUser(loginUser);

            if (user != null) {
//                如果查询到用户，将用户放入session域中，然后根据用户类型，返回不同的页面
                session.setAttribute(Const.LOGIN_USER, user);
                success(true);
                switch (user.getUsertype()) {
                    case "user": {
                        message("/index");
                    }
                    break;

                    case "admin":
                    case "superadmin": {
                        message("/manager/index");
                    }
                    break;

                    default: {
                        message("/index");
                    }
                }
                return end();
            } else {
                success(false);
//            如果查询不到用户则查询用户名是否存在
                boolean flag = userService.usernameExists(loginUser.getUsername());
                if (flag) {
//                    如果用户名存在，提示用户名或密码错误
                    message(Const.USERNAME_OR_PASSWORD_ERROR);
                } else {
                    message(Const.USERNAME_NOT_EXISTS);
                }
                return end();
            }
        } catch (Exception e) {
            success(false);
            message(Const.SYSTEM_ERROR);
            e.printStackTrace();
        }
        return end();
    }

    /**
     * 接收用户的注册信息，检索用户名是否已经被占用
     * 如果被占用返回提示信息
     * 如果没有被占用则加密密码后保存用户信息。
     */
    @ResponseBody
    @RequestMapping("/user/doRegist")
    public Object doRegist(User user) {
        start();
        try {
//            1、判断该用户名是否被占用，如果被占用则返回提示信息。
            boolean flag = userService.usernameExists(user.getUsername());
            if (flag) {
                success(false);
                message(Const.USERNAME_EXISTS);
                return end();
            }
//            2、用户名未被占用，保存用户信息
            String password = MD5Util.digest(user.getPassword());
            user.setPassword(password);
            int count = userService.saveUser(user);
            if (count == 1) {
                success(true);
                message(Const.REGIST_SUCCESS);
                return end();
            } else {
                success(false);
                message(Const.REGIST_FAILED);
            }

        } catch (Exception e) {
            success(false);
            message(Const.REGIST_FAILED);
            e.printStackTrace();
        }
        return end();
    }
}