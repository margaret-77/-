package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.MenuInfo;

public interface MenuInfoMapper {
	
	//根据父级id和roleID查询子菜单
	public List<MenuInfo> getMenuList(Map<Object,Object> map); //int parentId,int roleId
	
	
	//根据父级id查询子菜单
	public List<MenuInfo> getAllMenuList(int parentId);
}
