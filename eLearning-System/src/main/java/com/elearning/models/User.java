package com.elearning.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
public class User {

	@NotEmpty(message = "Name must be given")
	@Size(min = 4,max=50,message="Name must be between 4-50 characters")
	private String name;
	@NotEmpty(message = "DOB must be given")
	private String dob;	
	@Column(length = 10)
	@NotEmpty(message="Phone number must be given")
	@Size(min=10,max=10,message="Phone number must be 10 digit number")
	@Pattern(regexp = "[0-9]{10,10}",message="Phone number is not valid")
	private String phone;
	@NotEmpty(message="Password must be given")
	@Size(min = 6,max=15,message = "Password must be atleast 6 characters")	
	private String pwd;
	
	@NotEmpty(message="Address must be given")
	private String address;
	
	
	
	@NotEmpty(message="Confirm Password must be given")
	private String cpwd;
	
	@NotEmpty(message = "Role must be given")
	private String role;
	@Id
	@Email(message = "Email is not valid")
	@NotEmpty(message = "Email must be given")
	@Column(unique = true)
	private String userid;
	private boolean active=true;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getCpwd() {
		return cpwd;
	}
	public void setCpwd(String cpwd) {
		this.cpwd = cpwd;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public boolean getActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", dob=" + dob + ", phone=" + phone + ", pwd=" + pwd + ", cpwd=" + cpwd
				+ ", role=" + role + ", userid=" + userid + ", active=" + active + "]";
	}
	
	
	
}
