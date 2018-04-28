package com.tju.navigation;

import com.tju.navigation.bean.User;
import com.tju.navigation.dao.UserDao;
import com.tju.navigation.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class NavigationApplicationTests {
    @Autowired
    UserService userService;

	@Autowired
	UserDao userDao;

	@Test
	public void contextLoads() {

    }
}
