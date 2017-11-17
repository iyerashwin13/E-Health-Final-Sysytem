package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class bookAppoimentController implements Controller{
	


	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession ses=req.getSession();
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml"); //load the bean (container) file for better modularity
		
		HospitalDao hd=(HospitalDao) app.getBean("hospitalDao");
		DoctorDao dd=(DoctorDao) app.getBean("doctorDao");
		LoginDao lp=(LoginDao) app.getBean("obj");
		String hospRegNum1=req.getParameter("hosp");
		String email1=(String)ses.getAttribute("email");
		String doc=(String)req.getParameter("doct");
		HospitalPojo hospRegNum=hd.getByRegId(hospRegNum1);
		System.out.println(" you have "+hospRegNum1);
		System.out.println(" hospt "+hospRegNum.getHospName());
		LoginPojoClass email=lp.getByEmail(email1);
		Doctor doctRegNum=dd.getByRegId(doc);
		String disease=req.getParameter("disease");
		String appDate=req.getParameter("appDate");
		String appTime=req.getParameter("appTime");
		String status="Pending";
		System.out.println(" DDDSES IS "+appDate+" "+appTime+" "+status);
		
		AppointmentPojo Myapp=new AppointmentPojo(0, hospRegNum, email, doctRegNum, disease, appDate, appTime, status);
		AppointmentDao apd=(AppointmentDao) app.getBean("AppointmentDao");
		apd.saveMethod(Myapp);
	
		return new ModelAndView("PatientProfile");
		
	}

}
