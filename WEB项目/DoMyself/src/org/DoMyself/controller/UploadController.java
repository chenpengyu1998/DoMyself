package org.DoMyself.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.DoMyself.Dao.PicDao;
import org.DoMyself.entity.Pic;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class UploadController {
	
	@RequestMapping("/uploadPic")
	public static String uploadPic(@RequestParam("workname") String workname, @RequestParam("url") CommonsMultipartFile[] files,@RequestParam("showword") String showword,HttpServletRequest request,HttpServletResponse response,@RequestParam("selectAge1") String tag1,@RequestParam("selectAge2") String tag2,@RequestParam("selectAge3") String tag3) {
		
		Date date = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyMMddHHmmss");
		String dateString = formatter.format(date);
		for(int i = 0;i<files.length;i++){  
	            if(files[i].isEmpty()) {
	            	continue;
	            }
			 	
			 
			 	System.out.println("fileName---------->" + files[i].getOriginalFilename());  
	            String username = null ;
	            Cookie[] cookies = request.getCookies();
	            if(cookies != null) {
		            for(Cookie cookie : cookies) {
		            	if(cookie.getName().equals("username")) {
		            		username = cookie.getValue();
		            	}
		            }
	            }
	            
	            
	            
	            if(!files[i].isEmpty()){  
	                int pre = (int) System.currentTimeMillis();  
	                try {  
	                    //拿到输出流，同时重命名上传的文件  
	                	
	                	String PicURL =  request.getSession().getServletContext().getRealPath("\\")+"\\UserPic\\"  +  username +"\\"+ files[i].getOriginalFilename();
	                	File file = new File( request.getSession().getServletContext().getRealPath("\\")+"\\UserPic"+"\\"+username);

	                	System.out.println("fileDir: "+request.getSession().getServletContext().getRealPath("\\")+"\\UserPic"+"\\"+username);
	                	System.out.println("PICURL: "+PicURL);
	                	if(!file.exists()) {
	                		file.mkdir();
	                	}
	                	
	                    FileOutputStream os = new FileOutputStream(PicURL);  
	                    //拿到上传文件的输入流  
	                    InputStream in = files[i].getInputStream();  
	                    Pic pic = new Pic();
	                    pic.setPicturename(workname);
	                    pic.setPicturemessage(showword);
	                    pic.setPictureurl("UserPic\\"  +  username +"\\"+ files[i].getOriginalFilename());
	                    pic.setUsername(username);
	                    pic.setMessageid(dateString);
	                    pic.setTag1(tag1);
	                    pic.setTag2(tag2);
	                    pic.setTag3(tag3);
	                    pic.setTag1heat(0);
	                    pic.setTag2heat(0);
	                    pic.setTag3heat(0);
	                    PicDao.insertPic(pic);
	                    //以写字节的方式写文件  
	                    int b = 0;  
	                    while((b=in.read()) != -1){  
	                        os.write(b);  
	                    }  
	                    os.flush();  
	                    os.close();  
	                    in.close();  
	                    int finaltime = (int) System.currentTimeMillis();  
	                    System.out.println(finaltime - pre);  
	                    
	                } catch (Exception e) {  
	                    e.printStackTrace();  
	                    System.out.println("上传出错");  
	                }  
	            }  
	        }  
		
		return "init";
	}
	
	
	
}
