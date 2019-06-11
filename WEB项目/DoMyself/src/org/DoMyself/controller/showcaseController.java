package org.DoMyself.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.PicDao;
import org.DoMyself.entity.Pic;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class showcaseController {
	@RequestMapping("/showcase")
	public static void showcase(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
	
		List<Pic> pics = PicDao.selectAllPic();
		for(Pic p: pics) {
			System.out.println(p.toString());
		}
		request.setAttribute("pics", pics);
		request.getRequestDispatcher("showcase.jsp").forward(request, response);
	}
	@RequestMapping("/showcaseDetails")
	public static void showcaseDetails(HttpServletRequest request,HttpServletResponse response,@RequestParam("mid") String mid) {
		Pic pic = PicDao.selectPicBymid(mid);
		System.out.println(pic.toString()); 
		
		int Tag1heat = pic.getTag1heat();
		pic.setTag1heat(++Tag1heat);
		pic.setPicheat(pic.getTag1heat()+pic.getTag2heat()+pic.getTag3heat()+1);
		PicDao.updateTagHeat(pic);
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
