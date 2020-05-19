package com.neusoft.beans;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
public class MenuInfo implements Serializable{
	private int id;
	private String menuName;
	private String target;
	private int parentId; //����id
	private String url;
	private String icon; //�˵�ͼ��
	private String des;  //�˵�˵��
	private List<MenuInfo> subMenuList; //��ʾ��ǰ�˵����Ӳ˵�
	
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
