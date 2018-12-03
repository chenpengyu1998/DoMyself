package org.DoMyself.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.UserDao;
import org.DoMyself.entity.User;
import org.DoMyself.util.MyQueryForOne;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class loginController {
	@RequestMapping("/login")
	public static String loginController(@RequestParam("username") String username,@RequestParam("password") String password,HttpServletRequest request,HttpServletResponse response) { 
		
		
			
			try {
				int count = MyQueryForOne.MyQueryForOne("select count(*) from user where username = '"+username+"';");
				if(count==0) {
					request.setAttribute("message", "用户名不存在");
				request.getRequestDispatcher("login.jsp").forward(request,response);
				}else {
					User user = UserDao.findUser(username);
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
		
		return "index.jsp";
	}
	
}
