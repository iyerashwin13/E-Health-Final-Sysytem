package com.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

//accessing data
public class AppointmentDao {

	HibernateTemplate template;
	// provide integration of Spring and Hibernate Framework
	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}

	public void saveMethod(AppointmentPojo ap) {
		template.save(ap);
	}
// Approved the appointment by doctor of pending requests
	public List<AppointmentPojo> getAppoinmentsByDoctor(String dr) {
		ArrayList<AppointmentPojo> appoinments;
		System.out.println(" in getAppoinmentsByDoctor "+dr);
		String app="Approved";
		appoinments = (ArrayList<AppointmentPojo>) template
				.find("from AppointmentPojo where DOCTREGNUM='" + dr+"' and status='"+app+"'");
		
		
		return appoinments;
	}
	// list the appointment requested by patient
	public List<AppointmentPojo> getAppoinmentsByPatient( String pt) {
		ArrayList<AppointmentPojo> appoinments;
		System.out.println(" in getAppoinmentsByDoctor"
				+ " "+pt);
		appoinments = (ArrayList<AppointmentPojo>) template
				.find("from AppointmentPojo app where EMAIL='" + pt+"'");
		return appoinments;
	}
	
	// get the list of doctors registered in hospital when book an new appointment
	public List<AppointmentPojo> getAppoinmentsByHospital(String hp) {
		ArrayList<AppointmentPojo> appoinments;
		System.out.println(" in getAppoinmentsByDoctor "+hp);
		
		appoinments = (ArrayList<AppointmentPojo>) template.find("from AppointmentPojo where hospRegNum='" + hp+"'");
		
		
		return appoinments;
	}
	
	// Once doctor approves the patient's appointment---Status Update
	
	public boolean UpdateStatus(int appid, String status) {
		System.out.println(appid);
		AppointmentPojo app=(AppointmentPojo) template.get(AppointmentPojo.class, appid);
		System.out.println(" hi "+app.getStatus()+app.getAppId());
		app.setStatus("Approved");
		template.update(app);
		return true;
	}
	//Appointment booking-- status approval pending
	public List<AppointmentPojo> sortAppoinmentsByPatient(String pt1) {
		ArrayList<AppointmentPojo> appoinments;
		System.out.println(" in getAppoinmentsByDoctor"+" "+pt1);
		String app="Pending";
		appoinments = (ArrayList<AppointmentPojo>) template
				.find("from AppointmentPojo app where doctregnum='" + pt1 +"' and status='"+app+"'");
		return appoinments;
	}

}