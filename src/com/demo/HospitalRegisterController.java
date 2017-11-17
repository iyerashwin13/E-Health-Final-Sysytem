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

public class HospitalRegisterController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String hospRegNum=req.getParameter("hospRegNum");
		String hospName=req.getParameter("hospName");
		String hospAdd=req.getParameter("hospAdd");
		String hospCity=req.getParameter("hospCity");
		String area=req.getParameter("area");
		String pinCode=req.getParameter("pinCode");
		String spec=req.getParameter("spec");
		String hContact=req.getParameter("hContact");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
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

		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml"); //load the bean(container) file
		
		HospitalDao dd=(HospitalDao)app.getBean("hospitalDao");  // access data
		
		try {

			
			dd.savemethod(new HospitalPojo(hospRegNum, hospName, hospAdd, hospCity, area, pinCode, spec, hContact, email, password, npath));
			
			return new ModelAndView("HospitalLogin");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("HospitalRegistration");
	}

}
