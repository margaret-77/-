package com.neusoft.beans;

public class UserInfo {
	private int id;
	private String userName;
	private String password;
	private String note;
	private int roleId;
	private int u_type;
	private String user_id;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public int getU_type() {
		return u_type;
	}
	public void setU_type(int u_type) {
		this.u_type = u_type;
	}
	public String getUserId() {
		return user_id;
	}
	public void setUserId(String user_id) {
		this.user_id = user_id;
	}
	@Override
	public String toString() {
		return "UserInfo [id=" + id + ", userName=" + userName + ", password="
				+ password + ", note=" + note + ", roleId=" + roleId
				+ ", u_type=" + u_type + ", user_id=" + user_id + "]";
	}
	
	
}
