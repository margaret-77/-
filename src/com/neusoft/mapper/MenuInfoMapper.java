package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.MenuInfo;

public interface MenuInfoMapper {
	
	//���ݸ���id��roleID��ѯ�Ӳ˵�
	public List<MenuInfo> getMenuList(Map<Object,Object> map); //int parentId,int roleId
	
	
	//���ݸ���id��ѯ�Ӳ˵�
	public List<MenuInfo> getAllMenuList(int parentId);
}
