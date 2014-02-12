package com.locomate.java.proxy;

import java.util.List;

import com.locomate.java.hibernate.User;

public interface LoginProxy {
	/*public String addLoginDetails*/
 public List<User> checkUsers();
 public User saveUser(User usr);
}
