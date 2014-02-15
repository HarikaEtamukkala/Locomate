package com.locomate.java.proxy.Impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.locomate.java.hibernate.User;
import com.locomate.java.proxy.LoginProxy;

public class LoginProxyImpl implements LoginProxy  {

	@Autowired
	private static SessionFactory sessionFactory;
	
	@Autowired
	public   LoginProxyImpl(SessionFactory sessionFactory) {
		LoginProxyImpl.sessionFactory = sessionFactory;
	}
	
	@Transactional
    public User saveUser(User user) {
        Session session = sessionFactory.getCurrentSession();
        session.save(user);
		return user;
    }
	
	 @SuppressWarnings("unchecked")
		@Transactional
	    public List<User> list() {
	        Session session = sessionFactory.getCurrentSession();
	        List<User> loginDetails = null;
	        try {
	        	loginDetails = (List<User>)session.createQuery("from User").list();
	        	System.out.println("login==="+loginDetails.get(0));
	        	loginDetails.get(1);
	 
	        } catch (HibernateException e) {
	            e.printStackTrace();
	        }
	        return loginDetails;
	    }
	     
	    @Transactional
	    public User get(Integer id) {
	        Session session = sessionFactory.getCurrentSession();
	        return (User)session.get(User.class, id);
	        
	    }

		@Override
		public List<User> checkUsers() {
			// TODO Auto-generated method stub
			return null;
		}

		

}