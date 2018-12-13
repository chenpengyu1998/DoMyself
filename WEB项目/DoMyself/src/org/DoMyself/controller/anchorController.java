package org.DoMyself.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.PicDao;
import org.DoMyself.entity.Pic;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class anchorController {
	
	@RequestMapping("/init")
	public static void init(HttpServletRequest request, HttpServletResponse response) {
		String username = "游客";
		Cookie[] cookies = request.getCookies();
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("username")) {
				username = cookie.getValue();
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
	
	
	
	
	
	
}
