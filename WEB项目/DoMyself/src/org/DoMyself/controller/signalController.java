package org.DoMyself.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.PicDao;
import org.DoMyself.entity.Pic;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class signalController {
	
	
	@RequestMapping("signalController")
	public static void signalMain(@RequestParam("mid") String messageid,HttpServletRequest request,HttpServletResponse response) {
		Pic pic = PicDao.selectPicBymid(messageid);
		System.out.println(pic.toString()); 
		request.setAttribute("pic", pic);
		try {
			request.getRequestDispatcher("signal.jsp").forward(request, response);
			
			
			
			
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
