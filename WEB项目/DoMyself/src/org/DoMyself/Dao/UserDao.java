package org.DoMyself.Dao;

import java.util.Date;

import org.DoMyself.entity.User;
import org.DoMyself.util.MyJdbcTemplate;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDao {
	public static void addUser(String username,String password,String email,String phone) {
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		Date date = new Date();
		int num = jdbcTemplate.update("INSERT INTO user(username,password,email,phonenum,registeredtime) VALUE(?,?,?,?,?)", username,password,email,phone,date);
	}	
	
}
