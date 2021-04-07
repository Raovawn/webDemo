package com.yizhen.webDemo.listener;

import javax.servlet.ServletContextEvent;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.ContextLoaderListener;

public class MyContextListener extends ContextLoaderListener {

	Logger logger = LoggerFactory.getLogger(MyContextListener.class);
	@Override
	public void contextInitialized(ServletContextEvent event) {
		logger.info("欢迎来到米罗的世界");
		logger.info("你好");
		super.contextInitialized(event);
	}

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		super.contextDestroyed(event);
	}

}
