package com.example.sample;

import java.io.Serializable;

public class RegistrationBean implements Serializable{

	private String firstName;
	private String lastName;
	private String address;
	private String emailId;
	private String gender;
	private String rollNo;
	private String branch[];
	private String sem;
	private String bday;
	private String languages[];
	
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String[] getBranch() {
		return branch;
	}
	public void setBranch(String branch[]) {
		this.branch = branch;
	}
	public String[] getLanguages()
	{
		return languages;
	}
	public void setLanguages(String languages[])
	{
		this.languages = languages;
	}
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	public String getBday() {
		return bday;
	}
	public void setBday(String bday) {
		this.bday = bday;
	}

}
