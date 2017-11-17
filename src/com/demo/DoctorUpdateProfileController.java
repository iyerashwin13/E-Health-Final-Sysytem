package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class DoctorUpdateProfileController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String userName=req.getParameter("userName");
		String doctRegNo=req.getParameter("doctRegNo");
		String adharNo=req.getParameter("adharNo");
		String dob=req.getParameter("dob");
		String addr=req.getParameter("addr");
		String height=req.getParameter("height");
		String weight=req.getParameter("weight");
	 	
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml"); //load the bean(container) file
		
		DoctorUpdateProfileDao dpd=(DoctorUpdateProfileDao) app.getBean("DUpdateDao"); //access data
		
		//dpd.saveMethod(new DoctorUpdateProfile(userName, adharNo, dob, addr, height, weight));
		
		dpd.saveMethod(new DoctorUpdateProfile(userName, new Doctor(doctRegNo), adharNo, dob, addr, height, weight));
		
		return new ModelAndView("DoctorProfile");
	}

}
