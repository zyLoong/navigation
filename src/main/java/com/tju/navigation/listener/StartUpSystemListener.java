package com.tju.navigation.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class StartUpSystemListener implements ServletContextListener {
/**
 * 自定义监听器 用来获取项目的路径
 */
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContext servletContext = sce.getServletContext();
		String contextPath = servletContext.getContextPath();
		servletContext.setAttribute("APP_PATH", contextPath);

	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {

	}

}
