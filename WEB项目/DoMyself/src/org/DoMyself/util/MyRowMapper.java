package org.DoMyself.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.DoMyself.entity.User;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.messaging.simp.annotation.support.SimpAnnotationMethodMessageHandler;

public class MyRowMapper implements RowMapper<User> {
	@Override
	public User mapRow(ResultSet rs, int i) throws SQLException {
		User user = new User();
		user.setUsername(rs.getString("username"));
		user.setPassword(rs.getString("password"));
		user.setEmail(rs.getString("email"));
		user.setPhonenum(rs.getString("phonenum"));
		user.setUsertag1(rs.getString("usertag1"));
		user.setUsertag2(rs.getString("usertag2"));
		user.setUsertag3(rs.getString("usertag3"));
		user.setFriendid(rs.getInt("friendid"));
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		
		
		try {
			user.setRegisteredtime(sdf.parse(rs.getString("registeredtime")));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}
}
