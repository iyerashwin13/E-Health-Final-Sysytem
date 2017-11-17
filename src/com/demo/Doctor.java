package com.demo;

public class Doctor {
	
	String doctRegNo;
	HospitalPojo hospitalId;
	String doctName;
	String degreeIn;
	String specIn;
	String mobnum;
	String gender;
	String bdGroup;
	String marStatus;
	String email;
	String password;
	String image;
	
	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	// Parameterized Constructor
	
	public Doctor(String doctRegNo, HospitalPojo hospitalId, String doctName, String degreeIn, String specIn,
			String mobnum, String gender, String bdGroup, String marStatus, String email, String password,
			String image) {
		super();
		this.doctRegNo = doctRegNo;
		this.hospitalId = hospitalId;
		this.doctName = doctName;
		this.degreeIn = degreeIn;
		this.specIn = specIn;
		this.mobnum = mobnum;
		this.gender = gender;
		this.bdGroup = bdGroup;
		this.marStatus = marStatus;
		this.email = email;
		this.password = password;
		this.image = image;
	}

	public String getDoctRegNo() {
		return doctRegNo;
	}

	public void setDoctRegNo(String doctRegNo) {
		this.doctRegNo = doctRegNo;
	}

	public HospitalPojo getHospitalId() {
		return hospitalId;
	}

	public void setHospitalId(HospitalPojo hospitalId) {
		this.hospitalId = hospitalId;
	}

	public String getDoctName() {
		return doctName;
	}

	public void setDoctName(String doctName) {
		this.doctName = doctName;
	}

	public String getDegreeIn() {
		return degreeIn;
	}

	public void setDegreeIn(String degreeIn) {
		this.degreeIn = degreeIn;
	}

	public String getSpecIn() {
		return specIn;
	}

	public void setSpecIn(String specIn) {
		this.specIn = specIn;
	}

	public String getMobnum() {
		return mobnum;
	}

	public void setMobnum(String mobnum) {
		this.mobnum = mobnum;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBdGroup() {
		return bdGroup;
	}

	public void setBdGroup(String bdGroup) {
		this.bdGroup = bdGroup;
	}

	public String getMarStatus() {
		return marStatus;
	}

	public void setMarStatus(String marStatus) {
		this.marStatus = marStatus;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
		
	
	   public Doctor(String doctRegNo, String doctName) {
		super();
		this.doctRegNo = doctRegNo;
		this.doctName = doctName;
	}
	   public Doctor(String doctRegNo) {
			super();
			this.doctRegNo = doctRegNo;
		
		}

}
