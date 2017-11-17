package com.demo;

//access data

import org.springframework.orm.hibernate3.HibernateTemplate;

import com.demo.DoctorUpdateProfile;

public class DoctorUpdateProfileDao {

	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	public void saveMethod(DoctorUpdateProfile dup)
	{
		template.save(dup);
	}
}
