package com.locomate.java.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="postridedetails")
public class PostRidePO {
	@Id
	@GeneratedValue
    @Column(name="rideId")	
	private int rideId;
	@Column(name="FromPlace")
	private String fromAddress;
	@Column(name="ToPlace")
	private String toAddress;
	@Column(name="viaAddress")
	private String viaAddress;
	@Column(name="Traveldate")
	private Date travelDate;
	@Column(name="TravelDuration")
	private int travelDuration;
	@Column(name="Travelday")
	private Date travelDay;
	@Column(name="returnDate")
	private Date  returnTime;
	@Column(name="pickupAddress")
	private String pickUpStop;
	public Date getTotravelDate() {
		return totravelDate;
	}
	public void setTotravelDate(Date totravelDate) {
		this.totravelDate = totravelDate;
	}
	@Column(name="requiredseats")
	private int requiredSeats;
	@Column(name="toTravelDate")
	private Date totravelDate;
	
	public String getFromAddress() {
		return fromAddress;
	}
	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}
	public String getToAddress() {
		return toAddress;
	}
	public void setToAddress(String toAddress) {
		this.toAddress = toAddress;
	}
	public String getViaAddress() {
		return viaAddress;
	}
	public void setViaAddress(String viaAddress) {
		this.viaAddress = viaAddress;
	}
	public Date getTravelDate() {
		return travelDate;
	}
	public void setTravelDate(Date travelDate) {
		this.travelDate = travelDate;
	}
	public int getTravelDuration() {
		return travelDuration;
	}
	public void setTravelDuration(int travelDuration) {
		this.travelDuration = travelDuration;
	}
	public Date getTravelDay() {
		return travelDay;
	}
	public void setTravelDay(Date travelDay) {
		this.travelDay = travelDay;
	}
	public Date getReturnTime() {
		return returnTime;
	}
	public void setReturnTime(Date returnTime) {
		this.returnTime = returnTime;
	}
	public int getRideId() {
		return rideId;
	}
	public void setRideId(int rideId) {
		this.rideId = rideId;
	}
	public String getPickUpStop() {
		return pickUpStop;
	}
	public void setPickUpStop(String pickUpStop) {
		this.pickUpStop = pickUpStop;
	}
	public int getRequiredSeats() {
		return requiredSeats;
	}
	public void setRequiredSeats(int requiredSeats) {
		this.requiredSeats = requiredSeats;
	}
	

}
