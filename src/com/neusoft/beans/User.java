package com.neusoft.beans;

import java.sql.Time;

public class User {
	private int uid;

	private String accountUser;
	
	private String uname;

	private String passward;
	
	private String sex;
	
	private String cardtype;

	private String idcard;

	private String tel;

	private String type;

	private String email;
  
	private String userinfo_id;
	
	private double money;
	

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPassword() {
		return passward;
	}

	public void setPassword(String password) {
		this.passward = password;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAccountUser() {
		return accountUser;
	}

	public void setAccountUser(String accountUser) {
		this.accountUser = accountUser;
	}

	public String getPassward() {
		return passward;
	}

	public void setPassward(String passward) {
		this.passward = passward;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getCardtype() {
		return cardtype;
	}

	public void setCardtype(String cardtype) {
		this.cardtype = cardtype;
	}

	public String getUserinfo_id() {
		return userinfo_id;
	}

	public void setUserinfo_id(String userinfo_id) {
		this.userinfo_id = userinfo_id;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", accountUser=" + accountUser + ", uname="
				+ uname + ", passward=" + passward + ", sex=" + sex
				+ ", cardtype=" + cardtype + ", idcard=" + idcard + ", tel="
				+ tel + ", type=" + type + ", email=" + email
				+ ", userinfo_id=" + userinfo_id + ", money=" + money + "]";
	}

	


	
}
