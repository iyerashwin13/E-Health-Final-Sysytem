package com.demo;

public class BillingPojo {
	
	String billId;
	LoginPojoClass email;
	HospitalPojo hospRegNum;
	String chargeFor;
	String fromDate;
	String toDate;
	String amount;
	public BillingPojo(String billId, LoginPojoClass email, HospitalPojo hospRegNum, String chargeFor, String fromDate,
			String toDate, String amount) {
		super();
		this.billId = billId;
		this.email = email;
		this.hospRegNum = hospRegNum;
		this.chargeFor = chargeFor;
		this.fromDate = fromDate;
		this.toDate = toDate;
		this.amount = amount;
	}
	public String getBillId() {
		return billId;
	}
	public void setBillId(String billId) {
		this.billId = billId;
	}
	public LoginPojoClass getEmail() {
		return email;
	}
	public void setEmail(LoginPojoClass email) {
		this.email = email;
	}
	public HospitalPojo getHospRegNum() {
		return hospRegNum;
	}
	public void setHospRegNum(HospitalPojo hospRegNum) {
		this.hospRegNum = hospRegNum;
	}
	public String getChargeFor() {
		return chargeFor;
	}
	public void setChargeFor(String chargeFor) {
		this.chargeFor = chargeFor;
	}
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public BillingPojo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
		
	
	

}
