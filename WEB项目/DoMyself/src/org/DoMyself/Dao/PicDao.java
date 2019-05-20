package org.DoMyself.Dao;

import java.util.List;

import org.DoMyself.entity.Pic;
import org.DoMyself.entity.User;
import org.DoMyself.util.MyJdbcTemplate;
import org.DoMyself.util.MyRowMapper;
import org.DoMyself.util.MyRowMapperForPic;
import org.springframework.jdbc.core.JdbcTemplate;

public class PicDao {
	public static void insertPic(Pic pic) {
		String sql = "INSERT INTO picturetable(pictureurl,picturename,picturemessage,username,messageid) VALUES(?,?,?,?,?)";
		
		
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		jdbcTemplate.update(sql,pic.getPictureurl(),pic.getPicturename(),pic.getPicturemessage(),pic.getUsername(),pic.getMessageid());
	}
	public static List<Pic> selectPic(String username) {
		String sql = "select * from picturetable where username=?";
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		 List<Pic> pics = jdbcTemplate.query(sql, new MyRowMapperForPic(),username);
		return pics;
		
	}
	public static Pic selectPicBymid(String mid) {
		String sql = "select * from picturetable where messageid=?";
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		Pic pic = jdbcTemplate.queryForObject(sql,new MyRowMapperForPic() ,mid);
		return pic;
	}
	
	
}
