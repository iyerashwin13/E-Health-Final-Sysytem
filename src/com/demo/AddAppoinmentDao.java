package com.demo;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class AddAppoinmentDao {

	String pid;
	String pname;
	String Did;
	String Dname;
	String Adate;
	int slot;
	public AddAppoinmentDao() {
		// TODO Auto-generated constructor stub
	}

	//Parameterized Constructor
	public AddAppoinmentDao(String pid, String pname, String did, String dname, String adate, int slot) {
		super();
		this.pid = pid;
		this.pname = pname;
		Did = did;
		Dname = dname;
		Adate = adate;
		this.slot=slot;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDid() {
		return Did;
	}

	public void setDid(String did) {
		Did = did;
	}

	public String getDname() {
		return Dname;
	}

	public void setDname(String dname) {
		Dname = dname;
	}

	public String getAdate() {
		return Adate;
	}

	public void setAdate(String adate) {
		Adate = adate;
	}

	public int getSlot() {
		return slot;
	}

	public void setSlot(int slot) {
		this.slot = slot;
	}
	
	
	public boolean addApoinment() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "root");
			Statement stmt = (Statement) con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			// System.out.println(uname +" here and "+pass);
			String qry = "select * from appoinment";
			ResultSet rs = stmt.executeQuery(qry);
			rs.moveToInsertRow();
			rs.updateInt(1, 0);
			rs.updateString(2, pid);
			rs.updateString(3, pname);
			rs.updateString(4, Did);
			rs.updateString(5, Dname);
			rs.updateString(6, Adate);
			rs.updateInt(7, slot);
			rs.updateInt(8, 1);
			rs.insertRow();
			System.out.println(" Insert ");
			return true;
			// System.out.println(rs.getString(1));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
}
