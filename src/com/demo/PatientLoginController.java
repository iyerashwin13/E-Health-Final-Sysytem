package com.demo;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class PatientLoginController implements Controller
{
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String email=req.getParameter("email");                                 //get the value from textfields using servlet
		String password=req.getParameter("password");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");    //load the bean file(container) for better modularity

		try {
			
		LoginDao ld=(LoginDao)app.getBean("obj");
		
		LoginPojoClass lpc=ld.getByEmail(email);      
		
			if(email.equals(lpc.getEmail()) && password.equals(lpc.getPassword())) // validate email and password with database
			{
				HttpSession session=req.getSession(true);                     // create session once email and password are matched
				session.setAttribute("fname", lpc.getFname());		
				session.setAttribute("email", email);
				session.setAttribute("image", lpc.getImage());

				return new ModelAndView("PatientProfile");     // redirect to patient profile dashboard
			}	
			else {
				return new ModelAndView("PatientInvalidLogin"); // returns error message if email and password does not match
			}
		} catch (Exception e) {
			
			return new ModelAndView("PatientLogin");    // return to login page 
		}
				
//		return null;
	}
}