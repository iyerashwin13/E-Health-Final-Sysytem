package com.demo;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;



public class getDocDao {

	public ArrayList<HospitalPojo> hosList() {

		try {
			Class.forName("com.mysql.jdbc.Driver"); //DB Connection
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			// System.out.println(uname +" here and "+pass);
			String qry = "select * from hospital"; 
			ResultSet rs = stmt.executeQuery(qry);
			
			ArrayList<HospitalPojo> arr = new ArrayList<HospitalPojo>();
			while (rs.next()) {
				int did = rs.getInt(1);
				String dname = rs.getString(2);
				arr.add(new HospitalPojo(Integer.toString(did), dname));
				
			}
			return arr;
			// System.out.println(rs.getString(1));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	public ArrayList<Doctor> docList(String hs) {

		try {
		
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			 System.out.println(" here and "+hs);
			String qry = "select * from Doctor where hospitalId='"+hs+"'";
			ResultSet rs = stmt.executeQuery(qry);
			
			ArrayList<Doctor> arr = new ArrayList<Doctor>();
			while (rs.next()) {
			
				/*arr.add(new Doctor(Integer.toString(did), dname));*/
				System.out.println(rs.getString(1)+" And "+rs.getString(3));
				arr.add(new Doctor(rs.getString(1),rs.getString(3)));
			
			}
			return arr;
			// System.out.println(rs.getSting(1));
		}  catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}
	
	public ArrayList<Slot> docList(int did, String date) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
			java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");
			Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			 System.out.println(did +" here and "+date);
			String qry = "select * from slot where slotid not in (select APPTIME from appointmentpojo where DOCTREGNUM='" + did
					+ "' and APPDATE=" + date + ") order by slotId";
			ResultSet rs = stmt.executeQuery(qry);
			ArrayList<Slot> arr = new ArrayList<Slot>();
			while (rs.next()) {
				int slotId = rs.getInt(2);
				String slot = rs.getString(1);
				arr.add(new Slot(slotId, slot));
			}
			return arr;
			// System.out.println(rs.getString(1));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

}