package com.demo;

public class AppointmentPojo {
	
	int appId;
	HospitalPojo hospRegNum;
	LoginPojoClass email;
	Doctor doctRegNum;
	String disease;
	String appDate;
	String appTime;
	String status;
	
	public AppointmentPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	//Parameterized Constructor
	public AppointmentPojo(int appId, HospitalPojo hospRegNum, LoginPojoClass email, Doctor doctRegNum,
			String disease, String appDate, String appTime, String status) {
		super();
		this.appId = appId;
		this.hospRegNum = hospRegNum;
		this.email = email;
		this.doctRegNum = doctRegNum;
		this.disease = disease;
		this.appDate = appDate;
		this.appTime = appTime;
		this.status = status;
	}

	public int getAppId() {
		return appId;
	}

	public void setAppId(int appId) {
		this.appId = appId;
	}

	public HospitalPojo getHospRegNum() {
		return hospRegNum;
	}

	public void setHospRegNum(HospitalPojo hospRegNum) {
		this.hospRegNum = hospRegNum;
	}

	public LoginPojoClass getEmail() {
		return email;
	}

	public void setEmail(LoginPojoClass email) {
		this.email = email;
	}

	public Doctor getDoctRegNum() {
		return doctRegNum;
	}

	public void setDoctRegNum(Doctor doctRegNum) {
		this.doctRegNum = doctRegNum;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getAppDate() {
		return appDate;
	}

	public void setAppDate(String appDate) {
		this.appDate = appDate;
	}

	public String getAppTime() {
		return appTime;
	}

	public void setAppTime(String appTime) {
		this.appTime = appTime;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	

}
