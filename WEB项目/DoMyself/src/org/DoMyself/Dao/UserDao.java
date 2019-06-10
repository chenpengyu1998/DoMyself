package org.DoMyself.Dao;

import java.util.Date;

import org.DoMyself.entity.User;
import org.DoMyself.util.MyJdbcTemplate;
import org.DoMyself.util.MyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDao {
	public static void addUser(String username,String password,String email,String phone) {
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		Date date = new Date();
		int num = jdbcTemplate.update("INSERT INTO user(username,password,email,phonenum,registeredtime) VALUE(?,?,?,?,?)", username,password,email,phone,date);
	}	
	
	public static User findUserByUsername(String username) {
		
		String sql = "select * from user where username = ?";
		
		User user = new User();
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		user = jdbcTemplate.queryForObject(sql,new MyRowMapper() , username);
			
		return user;
	}
	
	public static int updateUserPassword(String email,String password) {
		String sql= "update user set password = ? where email = ?";
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		int rows = jdbcTemplate.update(sql,password,email);
		return rows;
		
	}
	
	public static User findUserByEmail(String email) {
		
		String sql = "select * from user where email = ?";
		
		User user = new User();
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		user = jdbcTemplate.queryForObject(sql,new MyRowMapper() , email);
			
		return user;
	}
	
//	public static int updateUserTag(User u,String usertag1,String usertag2,String usertag3) {
//		String sql ="update user set usertag1=?,usertag2=?,usertag3=? where username= ?";
//		JdbcTemplate jdbc = MyJdbcTemplate.getJdbcTemplate();
//		int row = jdbc.update(sql,usertag1,usertag2,usertag3,u.getUsername());
//		return row;
//	}
	public static int updateUserTag(User u) {
		String sql ="update user set usertag1=?,usertag2=?,usertag3=? where username= ?";
		JdbcTemplate jdbc = MyJdbcTemplate.getJdbcTemplate();
		int row = jdbc.update(sql,u.getUsertag1(),u.getUsertag2(),u.getUsertag3(),u.getUsername());
		return row;
	}
	
	
	
	
	
	
	
}
