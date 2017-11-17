
package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;




public class ApproveAppontmentController implements Controller {

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		int appid=Integer.parseInt(req.getParameter("apid"));
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");
		AppointmentDao ap=(AppointmentDao)app.getBean("AppointmentDao");
		ap.UpdateStatus(appid, "Approved");
		System.out.println(" DoneDone ");
		return new ModelAndView("DoctorConfirmAppointment");
	}

}
