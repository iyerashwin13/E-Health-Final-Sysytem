package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

//update data 

public class PatientUpdateController implements Controller {

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		
		String adharNo=req.getParameter("adharNo");
		String email=req.getParameter("email");
		String addr=req.getParameter("addr");
		String dob=req.getParameter("dob");
		
		String occupation=req.getParameter("occupation");
		String height=req.getParameter("height");
		String weight=req.getParameter("weight");
		
		System.out.println(adharNo);
		System.out.println(email);
		
	
		PatientProfile pp=new PatientProfile(adharNo, new LoginPojoClass(email), addr, dob, occupation, height, weight);
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");
		PatientProfileDao1 ppd=(PatientProfileDao1) app.getBean("patientUpdateProfileDao");

		ppd.saveMethod(pp);
		
		return new ModelAndView("PatientProfile");
	}

}
