package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.RoleInfo;
import com.neusoft.beans.RoleMenu;

public interface RoleInfoMapper {
	
	public void addRole(RoleInfo role); //增加角色
	
	public List<RoleInfo> getAllRole();//查询所有角色
	
	public List<RoleMenu> getRoleMenuId(int roleId);  //查询 角色对应的所有菜单
	
	public void delRoleMenu(int roleId);  //删除角色对应的菜单
	
	public void addRoleMenu(Map<Object,Object> map);  //增加角色和对应的菜单    [int roleId ,int menuId]
	
}
