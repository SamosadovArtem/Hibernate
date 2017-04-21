package com.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final SessionFactory sessionFactory;
	
	 static{
		try {
			System.out.println("sessionFactory工廠創建");
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch (Throwable ex) {
			// TODO Auto-generated catch block
			System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
		}
		
	}
	
	public static SessionFactory getSessionFactory(){
		return sessionFactory;
	}
}
