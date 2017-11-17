package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class HospitalInvalidLogin implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String hospRegNum=req.getParameter("hospRegNum");
		String password=req.getParameter("password");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");
		
		HospitalDao hd=(HospitalDao) app.getBean("hospitalDao");
		
		HospitalPojo hp=hd.getByRegId(hospRegNum);
		
		try {
			if(hospRegNum.equals(hp.getHospRegNum()) && password.equals(hp.getPassword()))
			{
				HttpSession session=req.getSession(true);
				session.setAttribute("hospRegNum",hospRegNum);
				session.setAttribute("hospName", hp.getHospName());
				session.setAttribute("image", hp.getImage());
		
				return new ModelAndView("HospitalProfile");
			}
				else {
					return new ModelAndView("HospitalInvalidLogin");
				}

			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return new ModelAndView("HospitalLogin");
		}
//		return null;
	}

}
