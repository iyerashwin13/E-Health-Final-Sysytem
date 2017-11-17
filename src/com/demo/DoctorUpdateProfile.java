package com.demo;

public class DoctorUpdateProfile {

	String userName;
	Doctor doctRegNo;
	String adharNo;
	String dob;
	String addr;
	String height;
	String weight;
	
	
	public DoctorUpdateProfile() {
		super();
		// TODO Auto-generated constructor stub
	}

	//Parameterized Constructor

	public DoctorUpdateProfile(String userName, Doctor doctRegNo, String adharNo, String dob, String addr,
			String height, String weight) {
		super();
		this.userName = userName;
		this.doctRegNo = doctRegNo;
		this.adharNo = adharNo;
		this.dob = dob;
		this.addr = addr;
		this.height = height;
		this.weight = weight;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public Doctor getDoctRegNo() {
		return doctRegNo;
	}


	public void setDoctRegNo(Doctor doctRegNum) {
		this.doctRegNo = doctRegNum;
	}


	public String getAdharNo() {
		return adharNo;
	}


	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}


	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public String getHeight() {
		return height;
	}


	public void setHeight(String height) {
		this.height = height;
	}


	public String getWeight() {
		return weight;
	}


	public void setWeight(String weight) {
		this.weight = weight;
	}

	
	
	
	
	
}
