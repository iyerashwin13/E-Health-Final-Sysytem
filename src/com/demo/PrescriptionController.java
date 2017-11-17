package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class PrescriptionController implements Controller {

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		
		String pid=req.getParameter("pid");
		String email=req.getParameter("email");
		String doctRegNo=req.getParameter("doctRegNo");
		String diseases=req.getParameter("diseases");
		String med=req.getParameter("med");
		
		String medname=req.getParameter("medname");
		String dose=req.getParameter("dose");
		
		String medquantity=req.getParameter("medquantity");
		String remark=req.getParameter("remark");
		String prescrDate=req.getParameter("prescrDate");
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");
		PrescriptionDao ap=(PrescriptionDao)app.getBean("prescDao");
		
		/*PrescriptionPojo p=new PrescriptionPojo(pid, new LoginPojoClass(email), new Doctor(doctId), diseases, med, medname, dose, medquantity, remark, prescrDate);
		//PrescriptionPojo p=new PrescriptionPojo(0, new LoginPojoClass(email), new Doctor("12"), diseases, med, medname, dose, medquantity, remark, prescrDate);
		ap.addPrescription(p);
		
		return  new ModelAndView("index");*/
		
		
		
try {

			
			ap.savemethod(new PrescriptionPojo(pid, new LoginPojoClass(email),new Doctor(doctRegNo), diseases, med, medname, dose, medquantity, remark, prescrDate));
			return new ModelAndView("DoctorProfile");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return new ModelAndView("DoctorPrescription");
	}

	

}
