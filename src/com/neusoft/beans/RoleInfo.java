package com.neusoft.beans;

import java.io.Serializable;

//角色信息
@SuppressWarnings("serial")
public class RoleInfo implements Serializable {
	private int id;
	private String roleName; //角色名称
	private String des; //角色描述
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
}
