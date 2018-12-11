package org.DoMyself.Dao;

import org.DoMyself.entity.Pic;
import org.DoMyself.util.MyJdbcTemplate;
import org.springframework.jdbc.core.JdbcTemplate;

public class PicDao {
	public static void insertPic(Pic pic) {
		String sql = "INSERT INTO picturetable(pictureurl,picturename,picturemessage) VALUES(?,?,?)";
		
		
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		jdbcTemplate.update(sql,pic.getPictureurl(),pic.getPicturename(),pic.getPicturemessage());
		
		
	}
}
