package com.demo;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class ControllerLogin  implements Controller 
{
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception 
	{
		String fname=req.getParameter("fname");
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
		String blood=req.getParameter("bloodGroup");
		String mobno=req.getParameter("mobnum");
		String gen=req.getParameter("gender");
		String marStatus=req.getParameter("marStatus");
		String image=req.getParameter("image");
		
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) req;
		CommonsMultipartFile multipartFile =  null; 
		
		
		    @SuppressWarnings("unchecked")
			Iterator<String> iterator = multipartRequest.getFileNames();

		    while (iterator.hasNext()) {
		        String key = (String) iterator.next();
		        // create multipartFile array if you upload multiple files
		        multipartFile = (CommonsMultipartFile) multipartRequest.getFile(key);
		    }
		    
		    HttpSession session =req.getSession();
		    
		   String s = multipartFile.getOriginalFilename(); 
		   ServletContext context = session.getServletContext();
		   String path = context.getRealPath("/Photos");
		   
		   System.out.println(path+s);
		   String f1 = path + File.separator + s;
		   byte[] bytes = multipartFile.getBytes();  
		    BufferedOutputStream stream =new BufferedOutputStream(new FileOutputStream(f1) );  
		    
		    stream.write(bytes);  
		    stream.flush();  
		    stream.close();  
		   
		    String npath="Photos/"+s;
		    
		    System.out.println(npath);

		
		ApplicationContext con = new ClassPathXmlApplicationContext("bean.xml"); ////load the bean file (container) for better modularity
		
		LoginDao l1= (LoginDao) con.getBean("obj");
		try 
		{				
			l1.savemethod(new LoginPojoClass(fname,email,mobno,gen,blood,marStatus, pass,npath));

			return new ModelAndView("PatientLogin");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("PatientSignUp");
	}	
}
