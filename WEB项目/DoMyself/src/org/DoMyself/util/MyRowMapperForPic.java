package org.DoMyself.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.DoMyself.entity.Pic;
import org.springframework.jdbc.core.RowMapper;

public class MyRowMapperForPic implements RowMapper<Pic> {
	@Override
	public Pic mapRow(ResultSet rs, int rowNum) throws SQLException {
		Pic pic = new Pic();
		pic.setMessageid(rs.getString("messageid"));
		pic.setPicturemessage(rs.getString("picturemessage"));
		pic.setPicturename(rs.getString("picturename"));
		pic.setPictureurl(rs.getString("pictureurl"));
		pic.setUsername(rs.getString("username"));
		
		return pic;
	}
}
