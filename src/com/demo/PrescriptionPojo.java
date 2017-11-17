package com.demo;

public class PrescriptionPojo {

	
	String pid;
	LoginPojoClass email;
	Doctor doctRegNo;
	String diseases;
	String med;
	String medname;
	String dose;
	String medquantity;
	String remark;
	String prescrDate;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public LoginPojoClass getEmail() {
		return email;
	}
	public void setEmail(LoginPojoClass email) {
		this.email = email;
	}
	public Doctor getDoctRegNo() {
		return doctRegNo;
	}
	public void setDoctRegNo(Doctor doctRegNo) {
		this.doctRegNo = doctRegNo;
	}
	public String getDiseases() {
		return diseases;
	}
	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}
	public String getMed() {
		return med;
	}
	public void setMed(String med) {
		this.med = med;
	}
	public String getMedname() {
		return medname;
	}
	public void setMedname(String medname) {
		this.medname = medname;
	}
	public String getDose() {
		return dose;
	}
	public void setDose(String dose) {
		this.dose = dose;
	}
	public String getMedquantity() {
		return medquantity;
	}
	public void setMedquantity(String medquantity) {
		this.medquantity = medquantity;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getPrescrDate() {
		return prescrDate;
	}
	public void setPrescrDate(String prescrDate) {
		this.prescrDate = prescrDate;
	}
	public PrescriptionPojo(String pid, LoginPojoClass email, Doctor doctRegNo, String diseases, String med,
			String medname, String dose, String medquantity, String remark, String prescrDate) {
		super();
		this.pid = pid;
		this.email = email;
		this.doctRegNo = doctRegNo;
		this.diseases = diseases;
		this.med = med;
		this.medname = medname;
		this.dose = dose;
		this.medquantity = medquantity;
		this.remark = remark;
		this.prescrDate = prescrDate;
	}
	public PrescriptionPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	
	
	
	
}
