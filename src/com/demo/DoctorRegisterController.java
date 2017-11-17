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

public class DoctorRegisterController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String doctRegNo=req.getParameter("doctRegNo");
		String doctName=req.getParameter("doctName");
		String degreeIn=req.getParameter("degreeIn");
		String specIn=req.getParameter("specIn");
		String mobnum=req.getParameter("mobnum");
		String gender=req.getParameter("gender");
		String bdGroup=req.getParameter("bdGroup");
		String marStatus=req.getParameter("marStatus");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String image=req.getParameter("image");
		String hospRegNum=req.getParameter("hospRegNum");
		
		
		
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

		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");  	//load the bean(container) file
		
		DoctorDao dd=(DoctorDao)app.getBean("doctorDao"); 	// access data
		
		try {

				dd.savemethod(new Doctor(doctRegNo, new HospitalPojo(hospRegNum), doctName, degreeIn, specIn, mobnum, gender, bdGroup, marStatus, email, password, npath));
				return new ModelAndView("DoctorLogin");
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("DoctorRegistration");
	}
}