package com.demo;

import org.springframework.orm.hibernate3.HibernateTemplate;

// provide integration of Spring and Hibernate Framework
public class LoginDao 
{
	private HibernateTemplate template;  

	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {	// provide a setter method to set Hibernate Template by String
		this.template = template;
	}
	
	
	public void savemethod(LoginPojoClass n1)
	{
		template.save(n1);
	}
	
	public LoginPojoClass getByEmail(String email)	
	{
		System.out.println("asddsdsdsdSDsds"+email);
		LoginPojoClass p=(LoginPojoClass) template.get(LoginPojoClass.class, email);
		return p;
	}
}
