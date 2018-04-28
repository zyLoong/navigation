package com.tju.navigation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 基本控制器
 * @author Administrator
 * @date 2018/04/17
 */
//@RequestMapping("/test")
@Controller
public class DispatcherController {

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/test")
    public String test(){
        return "test";
    }
}