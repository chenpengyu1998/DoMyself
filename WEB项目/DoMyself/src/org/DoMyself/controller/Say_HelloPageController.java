package org.DoMyself.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.UserDao;
import org.DoMyself.util.SendEmail;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Say_HelloPageController {
	
	private static String ip="10.7.84.137:8080";
	
	private static String SendURL; 
	
	@RequestMapping("/toSendEmail")
	public static String verify(@RequestParam("email") String email,HttpServletRequest request,HttpServletResponse response) {
		
		SendURL = "http://" + ip+request.getServletContext().getContextPath()+"/register.jsp?email="+email;
		
		
		Cookie emailCookie = new Cookie("email", email);
		
		
		SendEmail se = new SendEmail();
		
		System.out.println("SendContent:"+se.getSendContent()+"<br/><a href='"+SendURL+"'>点击链接加入</a>)");
		
		se.setAcceptEmailAddress(email);
		se.setSendContent(se.getSendContent()+"<br/><a href='"+SendURL+"'>点击链接加入</a>");
		//se.setSendContent("<a href='http://www.baidu.com/email=1145693809@qq.com'>click</a>");
		se.sendVerifyEmail();
		
		
		
		
		response.addCookie(emailCookie);
		return "index.jsp";
	}
	
	
	
	
	@RequestMapping("/verify")
	public static String verify(@RequestParam("username") String username,@RequestParam("email") String email,@RequestParam("password") String password,@RequestParam("repassword") String repassword,@RequestParam("phone") String phone,HttpServletRequest request,HttpServletResponse response) {
		System.out.println(email+"\n"+password+"\n"+repassword+"\n");
		if(!password.equals(repassword)) {
			String message = "密码和确认密码不一致";
			request.setAttribute("message", message);
			try {
				request.getRequestDispatcher("register.jsp?email="+email).forward(request, response);
				
			} catch (IOException | ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else {
			request.setAttribute("message", "");
		}
		
		
		UserDao.addUser(username, password, email, phone);
		
		
		
		
		
		
		
		return "index.jsp";
	}



	public static void setIp(String ip) {
		Say_HelloPageController.ip = ip;
	}
	
	
	
	
}
