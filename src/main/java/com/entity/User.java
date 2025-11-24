package com.entity;

import jakarta.persistence.*;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "User_Details")
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "full_name")
	private String fullname;
	
	private String email;
	private String phone;
	private String password;
	public User() {
		super();
		
	}
	public User(String fullname, String email, String phone, String password) {
		super();
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", fullname=" + fullname + ", email=" + email + ", phone=" + phone + ", password="
				+ password + "]";
	}
	
	
	
	
}
