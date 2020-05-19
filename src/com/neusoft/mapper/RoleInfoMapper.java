package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.RoleInfo;
import com.neusoft.beans.RoleMenu;

public interface RoleInfoMapper {
	
	public void addRole(RoleInfo role); //���ӽ�ɫ
	
	public List<RoleInfo> getAllRole();//��ѯ���н�ɫ
	
	public List<RoleMenu> getRoleMenuId(int roleId);  //��ѯ ��ɫ��Ӧ�����в˵�
	
	public void delRoleMenu(int roleId);  //ɾ����ɫ��Ӧ�Ĳ˵�
	
	public void addRoleMenu(Map<Object,Object> map);  //���ӽ�ɫ�Ͷ�Ӧ�Ĳ˵�    [int roleId ,int menuId]
	
}
