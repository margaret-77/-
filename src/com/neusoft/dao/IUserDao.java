package com.neusoft.dao;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.UserInfo;

public interface IUserDao {
	UserInfo getUserById(int id);
	int addUser(UserInfo user);
	int delUser(int id);
	int updUser(UserInfo user);
	List<UserInfo> getAllUser();
	UserInfo getLoginUser(Map<Object,Object> map);
	List<UserInfo> getUserByName(String userName);
	
}
