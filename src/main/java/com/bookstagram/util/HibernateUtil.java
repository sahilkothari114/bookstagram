package com.bookstagram.util;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static SessionFactory sessionFactory;
	private Session currentSession;
	private Transaction currentTransaction;
	public HibernateUtil() {
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch(HibernateException exception){
		     System.out.println("Problem creating session factory");
		     exception.printStackTrace();
		}
	}
	public static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public Session openCurrentSession() {
		currentSession = getSessionFactory().openSession();
		return currentSession;
	}
	public Session openCurrentSessionWithTransaction() {
		currentSession = getSessionFactory().openSession();
		currentTransaction = currentSession.beginTransaction();
		return currentSession;
	}
	public void closeCurrentSession() {
		currentSession.close();
	}
	public void closeCurrentSessionWithTransaction() {
		currentTransaction.commit();
		currentSession.close();
	}
	public Session getCurrentSession() {
		return currentSession;
	}
	public void setCurrentSession(Session currentSession) {
		this.currentSession = currentSession;
	}
	public Transaction getCurrentTransaction() {
		return currentTransaction;
	}
	public void setCurrentTransaction(Transaction currentTransaction) {
		this.currentTransaction = currentTransaction;
	}
}
