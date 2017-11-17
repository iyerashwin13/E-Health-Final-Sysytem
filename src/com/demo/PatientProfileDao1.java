package com.demo;

import org.springframework.orm.hibernate3.HibernateTemplate;

//access data

public class PatientProfileDao1 {

	public HibernateTemplate template;

	
	public PatientProfileDao1() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PatientProfileDao1(HibernateTemplate template) {
		super();
		this.template = template;
	}

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	public void saveMethod(PatientProfile p)
	{
		
		template.save(p);
	}
}
