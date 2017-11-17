package com.demo;

import org.springframework.orm.hibernate3.HibernateTemplate;

public class SlotDao {
	HibernateTemplate template;
	
	public SlotDao() {
		// TODO Auto-generated constructor stub
	}
	
	public SlotDao(HibernateTemplate template) {
		super();
		this.template = template;
	}

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	public boolean Save(Slot s) {
		template.save(s);
		return true;
	}
	
}
