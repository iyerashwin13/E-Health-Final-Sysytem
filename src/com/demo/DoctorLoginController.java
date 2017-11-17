package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DoctorLoginController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String doctRegNo=req.getParameter("doctRegNo");		//get the value from textfields using servlet
		String password=req.getParameter("password");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");		//load the bean(container) file for better modularity
		
		DoctorDao hd=(DoctorDao) app.getBean("doctorDao");
		
		Doctor d=hd.getByRegId(doctRegNo);
		
		try {
			if(doctRegNo.equals(d.getDoctRegNo()) && password.equals(d.getPassword()))   // validate email and password with database
			{
				HttpSession session=req.getSession(true);			// create session once email and password are matched
				session.setAttribute("doctRegNo",doctRegNo);
				session.setAttribute("doctName", d.getDoctName());
				session.setAttribute("image", d.getImage());
				
				return new ModelAndView("DoctorProfile");			// redirect to doctor profile dashboard
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("DoctorLogin");					// return to login page 
		}
	return null;
}
}
