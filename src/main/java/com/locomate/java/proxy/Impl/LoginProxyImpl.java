package com.locomate.java.proxy.Impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.locomate.java.hibernate.User;
import com.locomate.java.proxy.LoginProxy;

public class LoginProxyImpl implements LoginProxy  {

	      SessionFactory sessionFactory;

	private User user;
	@SuppressWarnings("unchecked")
	@Transactional
	public List<User> checkUsers() {
		 List<User> checkDetails = new ArrayList<User>();
		 Session session = 
				 SessionFactoryUtils.getSession(this.sessionFactory, true);
		 Transaction tx = null;
		 try{
			 tx = session.beginTransaction();
		 checkDetails=session.createQuery("from User").list();
		 tx.commit();
		 tx=null;
		 }catch(HibernateException e){
			 throw SessionFactoryUtils.convertHibernateAccessException(e);
		 }finally {
			 SessionFactoryUtils.closeSession(session);
		 }
		return checkDetails;
	}
    @Transactional
	public User saveUser(User usr) {
		Session session = sessionFactory.getCurrentSession();
		try {
			  session.save(usr);
		} catch (HibernateException ex) {
		ex.printStackTrace();
		} /*finally {
		SessionFactoryUtils.closeSession(session);
		}*/
		return usr;
		}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		}
}
