package com.demo;

import java.util.ArrayList;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
// access data of prescription

public class PrescriptionDao {
	
	HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	public void addPrescription(PrescriptionPojo  presc) {
		template.save(presc);
	}
	
	public List<PrescriptionPojo> getPrescriptions(String userId){
		
		@SuppressWarnings("unchecked")
		ArrayList<PrescriptionPojo> presc= (ArrayList<PrescriptionPojo>) template.find("from PrescriptionPojo where pid='" + userId+"';");
		
		
		return presc;
		
		
	}
	
	public void savemethod(PrescriptionPojo p1)
	{
		template.save(p1);
	}
	
	public PrescriptionPojo getByPid(String pid)
	{
		System.out.println(" in Prescription pojo "+pid);
		PrescriptionPojo hp=(PrescriptionPojo) template.get(PrescriptionPojo.class, pid);
		return hp;
	}
	


}
