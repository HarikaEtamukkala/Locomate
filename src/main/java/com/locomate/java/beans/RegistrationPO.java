package com.locomate.java.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.springframework.context.annotation.Scope;

@Entity
@Scope("session")
@Table(name="registrationdetails")
public class RegistrationPO {
	@Id
    @GeneratedValue
    @Column(name="registerId")
	private Integer registratioId;
    @NotNull
    @Valid
	@Column(name="username")
	private String userName;
    @NotNull
    @Valid
	@Column(name="pswd")
	private String password;	
	@Column(name="firstName")
	private String firstName;
	@Column(name="lastName")
	private String lastName;
	@Column(name="mobileNo")
	private String mobileNumber;
	@Email
	@Column(name="email")
	private String email;
	@Column(name="occupation")
	private String occupation;
	@Transient
	private String referrer;
	
	public String getReferrer() {
		return referrer;
	}
	public void setReferrer(String referrer) {
		this.referrer = referrer;
	}
	public int getRegistratioId() {
		return registratioId;
	}
	public void setRegistratioId(int registratioId) {
		this.registratioId = registratioId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
}
