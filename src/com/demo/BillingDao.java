package com.demo;
import org.springframework.orm.hibernate3.HibernateTemplate;


public class BillingDao {

	

			private HibernateTemplate template;

			public HibernateTemplate getTemplate() {
				return template;
			}

			public void setTemplate(HibernateTemplate template) {
				this.template = template;
			}
			
			public void savemethod(BillingPojo b1)
			{
				template.save(b1);    //insert all data into database by using HQL(hibernate query language)
			}
			
			public BillingPojo getByBillId(String  billId)
			{
				BillingPojo dp=(BillingPojo) template.get(BillingPojo.class, billId);
				return dp;
			}


}
