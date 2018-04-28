package com.tju.navigation;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;



@EnableTransactionManagement
@MapperScan("com.tju.**.dao")
@SpringBootApplication
public class NavigationApplication {

    public static void main(String[] args) {
        SpringApplication.run(NavigationApplication.class, args);
    }
}
