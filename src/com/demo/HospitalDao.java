package com.demo;

import org.springframework.orm.hibernate3.HibernateTemplate;

//access data

public class HospitalDao {

	private HibernateTemplate template;

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	public void savemethod(HospitalPojo h1)
	{
		template.save(h1);
	}
	
	public HospitalPojo getByRegId(String hospRegNum)
	{
		System.out.println(" in hosp pojo "+hospRegNum);
		HospitalPojo hp=(HospitalPojo) template.get(HospitalPojo.class, hospRegNum);
		return hp;
	}
	

}
