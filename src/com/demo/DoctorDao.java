package com.demo;

import org.springframework.orm.hibernate3.HibernateTemplate;

// accessing data
public class DoctorDao {


		private HibernateTemplate template;

		public HibernateTemplate getTemplate() {
			return template;
		}

		public void setTemplate(HibernateTemplate template) {
			this.template = template;
		}
		
		public void savemethod(Doctor h1)
		{
			template.save(h1);
		}
		
		public Doctor getByRegId(String  did)
		{
			Doctor dp=(Doctor) template.get(Doctor.class, did);
			return dp;
		}

}
