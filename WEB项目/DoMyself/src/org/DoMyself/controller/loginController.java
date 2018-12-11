package org.DoMyself.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.UserDao;
import org.DoMyself.entity.User;
import org.DoMyself.util.MyQueryForOne;
import org.DoMyself.util.SendEmail;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class loginController {
	
	private static String SendURL;
	private static String IP="localhost:8080";
	
	@RequestMapping("/login")
	public static String loginController(@RequestParam("username") String username,@RequestParam("password") String password,HttpServletRequest request,HttpServletResponse response) { 
		
		
			
			try {
				int count = MyQueryForOne.MyQueryForOne("select count(*) from user where username = '"+username+"';");
				if(count==0) {
					request.setAttribute("message", "用户名不存在");
				request.getRequestDispatcher("login.jsp").forward(request,response);
				}else {
					User user = UserDao.findUserByUsername(username);
					if(!user.getPassword().equals(password)) {
						request.setAttribute("message", "密码错误");
						request.getRequestDispatcher("login.jsp").forward(request, response);
					}else {
						request.setAttribute("message", "");
					}
				}
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			Cookie[] cookie = request.getCookies();
			Cookie usernameC = new Cookie("username", username);
			response.addCookie(usernameC);
			
		
		return "index.jsp";
	}
	
	
	@RequestMapping("/findPassword")
	public static String findPasswordController(@RequestParam("email") String email,HttpServletRequest request,HttpServletResponse response) {
		if(MyQueryForOne.MyQueryForOne("select count(*) from user where email = '"+email+"'")==0) {
			try {
				request.setAttribute("message", "email不存在");
				request.getRequestDispatcher("findpwd.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}			
		}else {
			SendURL="http://"+IP+"//DoMyself/requestpwd.jsp?email=";
			SendURL+=email;
			SendEmail se = new SendEmail();
			se.setAcceptEmailAddress(email);
			se.setSendSubject("您好，这是找回密码的通知ByDoMyselfTeam");
			se.setSendContent(se.getSendContent()+"这是我们的重置密码的链接，顺便祝您生活愉快"+"<br/><a href='"+SendURL+"'>点击链接重置密码</a>");
			se.sendVerifyEmail();
		}
		return "index.jsp";
	}
	
	@RequestMapping("/repassword")
	public static String repassword(@RequestParam("password") String password,@RequestParam("repassword")  String repassword,HttpServletRequest request,HttpServletResponse response) {
		if(!password.equals(repassword)) {
			try {
				request.setAttribute("message", "确认密码和密码不一样");
				request.getRequestDispatcher("requestpwd.jsp").forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		


		
		Cookie[] cookies = request.getCookies();
		String email ="null";

		
		
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("email")){
				email = cookie.getValue();
			}
			cookie.toString();
		}
		int rows = UserDao.updateUserPassword(email, password);
		
		return "login.jsp";
	}
	
	
	
	
}
