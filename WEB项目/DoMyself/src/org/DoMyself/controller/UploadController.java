package org.DoMyself.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

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
	public static String uploadPic(@RequestParam("workname") String workname, @RequestParam("url") CommonsMultipartFile[] files,@RequestParam("showword") String showword,HttpServletRequest request,HttpServletResponse response) {
		 for(int i = 0;i<files.length;i++){  
	            if(files[i].isEmpty()) {
	            	continue;
	            }
			 	
			 
			 	System.out.println("fileName---------->" + files[i].getOriginalFilename());  
	            String username = null ;
	            Cookie[] cookies = request.getCookies();
	            for(Cookie cookie : cookies) {
	            	if(cookie.getName().equals("username")) {
	            		username = cookie.getValue();
	            	}
	            }
	            
	            
	            
	            
	            if(!files[i].isEmpty()){  
	                int pre = (int) System.currentTimeMillis();  
	                try {  
	                    //拿到输出流，同时重命名上传的文件  
	                	//request.getSession().getServletContext().getRealPath("/")+"UerPic/" 
	                	String PicURL =  "E:/JAVA_web/DoMyself/WebContent/UserPic/"  +  username +"/"+ files[i].getOriginalFilename();
	                	File file = new File( "E:/JAVA_web/DoMyself/WebContent/UserPic"+"/"+username);
	                	if(!file.exists()) {
	                		file.mkdir();
	                	}
	                	
	                	//PicURL = "UserPic/" + username + files[i].getOriginalFilename();
	                    FileOutputStream os = new FileOutputStream(PicURL);  
	                    //拿到上传文件的输入流  
	                    FileInputStream in = (FileInputStream) files[i].getInputStream();  
	                    Pic pic = new Pic();
	                    pic.setPicturename(workname);
	                    pic.setPicturemessage(showword);
	                    pic.setPictureurl(PicURL);
	                    pic.setUsername(username);
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
		
		return "index.jsp";
	}
	
	
	
}
