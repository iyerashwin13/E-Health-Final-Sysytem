package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HospitalLoginController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String hospRegNum=req.getParameter("hospRegNum");				//get the value from textfields using servlet
		String password=req.getParameter("password");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");	//load the bean(container) file for better modularity
		
		HospitalDao hd=(HospitalDao) app.getBean("hospitalDao");
		
		HospitalPojo hp=hd.getByRegId(hospRegNum);
		
		try {
			if(hospRegNum.equals(hp.getHospRegNum()) && password.equals(hp.getPassword())) // validate email and password with database
			{
				HttpSession session=req.getSession(true);			 // create session once email and password are matched
				session.setAttribute("hospRegNum",hospRegNum);
				session.setAttribute("hospName", hp.getHospName());
				session.setAttribute("image", hp.getImage());
		
				return new ModelAndView("HospitalProfile");			// redirect to hospital profile dashboard
			}
				else {
					return new ModelAndView("HospitalInvalidLogin"); // returns error message if email and password does not match
				}

			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("HospitalLogin");				// return to login page 
		}
//		return null;
	}

}
