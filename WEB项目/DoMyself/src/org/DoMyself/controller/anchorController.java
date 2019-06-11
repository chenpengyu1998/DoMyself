package org.DoMyself.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.PicDao;
import org.DoMyself.Dao.UserDao;
import org.DoMyself.entity.Pic;
import org.DoMyself.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class anchorController {
	
	@RequestMapping("/init")
	public static void init(HttpServletRequest request, HttpServletResponse response) {
		String username = "游客";
		Cookie[] cookies = request.getCookies();
		if(cookies!=null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("username")) {
					username = cookie.getValue();
				}
			}
		}
		List<Pic> pics= PicDao.selectPic(username);
		
		request.setAttribute("pics", pics);
		try {
			request.getRequestDispatcher("anchor.jsp").forward(request, response);
			
			
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/userTag")
	public static String userTag(HttpServletRequest request, HttpServletResponse response,@RequestParam("selectAge1") String usertag1 ,@RequestParam("selectAge2") String usertag2 ,@RequestParam("selectAge3") String usertag3 ) {
		String username = "游客";
		Cookie[] cookies = request.getCookies();
		if(cookies!=null) {
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("username")) {
					username = cookie.getValue();
				}
			}
		}
		User u = UserDao.findUserByUsername(username);
		u.setUsertag1(usertag1);
		u.setUsertag2(usertag2);
		u.setUsertag3(usertag3);
		UserDao.updateUserTag(u);
		return "init";
	}
	
	
	
	
}
