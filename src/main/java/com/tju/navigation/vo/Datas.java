package com.tju.navigation.vo;

import com.tju.navigation.bean.Resource;
import com.tju.navigation.bean.User;

import java.io.Serializable;
import java.util.List;

/**
 * @author Administrator
 * @date 2018/05/06
 */
public class Datas implements Serializable{
    private static final long serialVersionUID = -1679602663512717967L;

    private List<Resource> resourceList;
    private List<User> userList;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public List<Resource> getResourceList() {
        return resourceList;
    }

    public void setResourceList(List<Resource> resourceList) {
        this.resourceList = resourceList;
    }

    public List<User> getUserList() {
        return userList;
    }

    public void setUserList(List<User> userList) {
        this.userList = userList;
    }
}