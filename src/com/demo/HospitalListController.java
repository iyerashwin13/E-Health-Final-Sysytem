package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HospitalListController
 */


public class HospitalListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HospitalListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		getDocDao dod=new getDocDao();
		ArrayList<HospitalPojo> arr=dod.hosList();
		
		String rep=" <select id='hosp' name='hosp' onchange='getDoct()'> ";
		rep=rep+"<option value=''>----Select Hospital----</option>";
		for (HospitalPojo doctor : arr) {
			rep=rep+"<option value='"+doctor.getHospRegNum()+"'>"+doctor.getHospName()+"</option>";
		}
		rep=rep+"</select>";
		out.println(rep);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
