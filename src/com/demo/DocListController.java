package com.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DocListController
 * @param <getDoc>
 */
public class DocListController<getDoc> extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DocListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(" In Doctlist controller "); // returns doctor details
		PrintWriter out=response.getWriter();
		getDocDao dod=new getDocDao();
		String hid=request.getParameter("hid");
		ArrayList<Doctor> arr=dod.docList(hid);
		String rep=" <select id='doct' name='doct' onchange='getDate()'> ";
		rep=rep+"<option value=''>----Select Doctor----</option>";
		for (Doctor doctor : arr) {
			rep=rep+"<option value='"+doctor.getDoctRegNo()+"'>"+doctor.getDoctName()+"</option>";
			System.out.println(" In Doct "+doctor.getDoctRegNo()+" And "+doctor.getDoctName());
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
