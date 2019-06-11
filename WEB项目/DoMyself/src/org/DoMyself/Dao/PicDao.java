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
		String sql = "INSERT INTO picturetable(pictureurl,picturename,picturemessage,username,messageid,tag1,tag2,tag3,tag1heat,tag2heat,tag3heat,picheat) VALUES(?,?,?,?,?,?,?,?,0,0,0,0)";
		
		
		JdbcTemplate jdbcTemplate = MyJdbcTemplate.getJdbcTemplate();
		jdbcTemplate.update(sql,pic.getPictureurl(),pic.getPicturename(),pic.getPicturemessage(),pic.getUsername(),pic.getMessageid(),pic.getTag1(),pic.getTag2(),pic.getTag3());
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
	
	public static List<Pic> selectAllPic(){
		String sql = "select * from picturetable";
		JdbcTemplate jdbc = MyJdbcTemplate.getJdbcTemplate();
		List<Pic> pics = jdbc.query(sql, new MyRowMapperForPic());
		
		return pics;
	}
	public static int updateTagHeat(Pic p) {
		String sql = "update picturetable set tag1heat=?,tag2heat=?,tag3heat=? where messageid=?";
		JdbcTemplate jdbc = MyJdbcTemplate.getJdbcTemplate();
		int row = jdbc.update(sql,p.getTag1heat(),p.getTag2heat(),p.getTag3heat(),p.getMessageid());
		return row;
	}
	
}
