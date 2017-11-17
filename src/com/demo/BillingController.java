package com.demo;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class BillingController implements Controller{

	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		
		String billId=req.getParameter("billId");
		String hospRegNum=req.getParameter("hospRegNum");
		String email=req.getParameter("email");
		String chargeFor=req.getParameter("chargeFor");
		String fromDate=req.getParameter("fromDate");
		String toDate=req.getParameter("toDate");
		String amount=req.getParameter("amount");
		
		
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");
		BillingDao bd=(BillingDao)app.getBean("BillingDao");
		BillingPojo bp=bd.getByBillId(billId);
		
		try {

		//	bd.savemethod(new BillingPojo(billId, new LoginPojoClass(email) , new HospitalPojo(hospRegNum), chargeFor, fromDate, toDate, amount));
		
			bd.savemethod(new BillingPojo(billId, new LoginPojoClass(email),new HospitalPojo(hospRegNum), chargeFor, fromDate, toDate, amount));
			return new ModelAndView("HospitalBill");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return new ModelAndView("HospitalProfile");
		

	}

}
