package org.DoMyself.util;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;

public class MyJdbcTemplate {
	
	private static String xmlpath = "applicationContext.xml";
	
	public static JdbcTemplate getJdbcTemplate() {
		
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlpath);
		JdbcTemplate jdbcTemplate = (JdbcTemplate) applicationContext.getBean("jdbcTemplate");
		return jdbcTemplate;
	}

	
	
	
	public static String getXmlpath() {
		return xmlpath;
	}

	public static void setXmlpath(String xmlpath) {
		MyJdbcTemplate.xmlpath = xmlpath;
	}
	
	
	
	
	
}
