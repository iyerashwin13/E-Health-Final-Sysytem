package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**
 * Servlet implementation class TimeSlotController
 */
public class TimeSlotController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TimeSlotController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println(" WELCOME ");
		PrintWriter out = response.getWriter();
		String d = request.getParameter("date");
		int did = Integer.parseInt(request.getParameter("doct"));
		ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");

		SlotDao hd=(SlotDao) app.getBean("SlotDao");		
		getDocDao dod = new getDocDao();
		ArrayList<Slot> arr = dod.docList(did, d);
		System.out.println(did + " In TimeSlotAnd " + d);
		String rep = " <select id='slot' name='appTime' onchange='getDate()'> ";
		rep = rep + "<option value=''>----Select Slot----</option>";
		for (Slot slot : arr) {
			rep = rep + "<option value='" + slot.getSlotId() + "'>" + slot.getSlot() + " to " + (slot.getSlot() + 2)
					+ "</option>";
		}
		rep = rep + "</select>";
		out.println(rep);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}