package com.locomate.java.hibernate;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity  
@Table(name="users") 
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id  
	 @GeneratedValue(strategy=GenerationType.AUTO)  
	 @Column(name = "id")  
	private Integer userId;
	@Column(name="name") 
	private String loginuserName;
	@Column(name="password")
	private String userPassword;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getLoginuserName() {
		return loginuserName;
	}
	public void setLoginuserName(String loginuserName) {
		this.loginuserName = loginuserName;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	

}
