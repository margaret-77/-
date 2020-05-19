package com.neusoft.beans;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
public class MenuInfo implements Serializable{
	private int id;
	private String menuName;
	private String target;
	private int parentId; //父级id
	private String url;
	private String icon; //菜单图标
	private String des;  //菜单说明
	private List<MenuInfo> subMenuList; //表示当前菜单的子菜单
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getTarget() {
		return target;
	}
	public void setTarget(String target) {
		this.target = target;
	}
	public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public List<MenuInfo> getSubMenuList() {
		return subMenuList;
	}
	public void setSubMenuList(List<MenuInfo> subMenuList) {
		this.subMenuList = subMenuList;
	}

}
