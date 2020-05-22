package com.neusoft.beans;

import java.io.Serializable;

//常用联系人数据表
@SuppressWarnings("serial")
public class LinkmanInfo implements Serializable{

	private int linkmanId;

	private String uname;// 姓名

	private String sex;
	
	private String idcard;

	private String tel;

	private String type; // 乘车人类型 1、学生 2、成人 3、儿童 4、军人

	private String email;

	private String note;

	private String idcard_no;

	private String state;
	
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getLinkmanId() {
		return linkmanId;
	}

	public void setLinkmanId(int linkmanId) {
		this.linkmanId = linkmanId;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
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

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getIdcard_no() {
		return idcard_no;
	}

	public void setIdcard_no(String idcard_no) {
		this.idcard_no = idcard_no;
	}

	@Override
	public String toString() {
		return "LinkmanInfo [linkmanId=" + linkmanId + ", uname=" + uname
				+ ", sex=" + sex + ", idcard=" + idcard + ", tel=" + tel
				+ ", type=" + type + ", email=" + email + ", note=" + note
				+ ", idcard_no=" + idcard_no + ", state=" + state + "]";
	}

	

	
	
}
