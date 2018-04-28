package com.tju.navigation.controller;

import java.util.HashMap;
import java.util.Map;

/**
 * 这个类用来解决线程并发的问题
 */
public class BaseController {

    private ThreadLocal<Map> threadLocal = new ThreadLocal<Map>();

    public void start() {
        Map<String, Object> map = new HashMap<String, Object>();
        threadLocal.set(map);
    }

    public void success(boolean success) {
        threadLocal.get().put("success", success);
    }

    public void message(String message) {
        threadLocal.get().put("message", message);
    }

    public Object end() {
        return threadLocal.get();
    }

    public void data(Object data) {
        threadLocal.get().put("data", data);
    }
}
