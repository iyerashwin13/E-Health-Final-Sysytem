package com.demo;

public class LoginPojoClass {
	
	String fname;
	String email;
	String mobnum;
	String gender;
	String bloodGroup;
	String marStatus;
	String password;
	String image;
	

	 // Generate Getter and Setter functions
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getBloodGroup() {
		return bloodGroup;
	}
	
	
	public String getMarStatus() {
		return marStatus;
	}
	public void setMarStatus(String marStatus) {
		this.marStatus = marStatus;
	}
	
	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//default constructor
	public LoginPojoClass() {
		// TODO Auto-generated constructor stub
	}
	
	// parameterized constructor with single parameter email
	public LoginPojoClass(String email){
		
		this.email=email;
	}
	//define parameterized constructor
	
	public LoginPojoClass(String fname, String email, String mobnum, String gender, String bloodGroup,String marStatus,
			String password,String image) {
		super();
		this.fname = fname;
		this.email = email;
		this.mobnum = mobnum;
		this.gender = gender;
		this.bloodGroup = bloodGroup;
		this.marStatus=marStatus;
		this.password = password;
		this.image=image;
	}
	
	
	

}
