package com.demo;

public class HospitalPojo {
	
	 String hospRegNum;
	 String hospName;
	 String hospAdd;
	 String hospCity;
	 String area;
	 String pinCode;
	 String spec;
	 String hContact;
	 String email;
	 String password;
	 
	 String image;
	 
	 
	 
	public HospitalPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	public HospitalPojo(String hospRegNum, String hospName) {
		super();
		this.hospRegNum = hospRegNum;
		this.hospName = hospName;
	}

	HospitalPojo(String hospRegNum){
		
		this.hospRegNum = hospRegNum;

		
	}

//define parameterized constructor
	
	public HospitalPojo(String hospRegNum, String hospName, String hospAdd, String hospCity, String area,
			String pinCode, String spec, String hContact, String email, String password, String image) {
		super();
		this.hospRegNum = hospRegNum;
		this.hospName = hospName;
		this.hospAdd = hospAdd;
		this.hospCity = hospCity;
		this.area = area;
		this.pinCode = pinCode;
		this.spec = spec;
		this.hContact = hContact;
		this.email = email;
		this.password = password;
		this.image = image;
	}



	public String getHospRegNum() {
		return hospRegNum;
	}

	public void setHospRegNum(String hospRegNum) {
		this.hospRegNum = hospRegNum;
	}

	public String getHospName() {
		return hospName;
	}

	public void setHospName(String hospName) {
		this.hospName = hospName;
	}

	public String getHospAdd() {
		return hospAdd;
	}

	public void setHospAdd(String hospAdd) {
		this.hospAdd = hospAdd;
	}

	public String getHospCity() {
		return hospCity;
	}

	public void setHospCity(String hospCity) {
		this.hospCity = hospCity;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String gethContact() {
		return hContact;
	}

	public void sethContact(String hContact) {
		this.hContact = hContact;
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
	
	 
		 

}
