package com.demo;

class PatientProfile 
{
	String adharNo;
	LoginPojoClass email;
	String addr;
	String dob;
	String occupation;
	String height;
	String weight;
		
	public PatientProfile() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	//Parameterized Constructor
	
	public PatientProfile(String adharNo, LoginPojoClass loginEmail, String addr, String dob, String occupation,
			String height, String weight) {
		super();
		this.adharNo = adharNo;
		this.email = loginEmail;
		this.addr = addr;
		this.dob = dob;
		this.occupation = occupation;
		this.height = height;
		this.weight = weight;
	}

		public LoginPojoClass getEmail() {
		return email;
	}

	public void setEmail(LoginPojoClass email) {
		this.email = email;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
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
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
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
