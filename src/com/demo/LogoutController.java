package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LogoutController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session=req.getSession();
		session.invalidate();                        //destroy session
		res.sendRedirect("index.jsp");
		return null;
		
	}

}
