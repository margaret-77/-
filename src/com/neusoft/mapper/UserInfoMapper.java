package com.neusoft.mapper;

import java.util.List;

import java.util.Map;

import com.neusoft.beans.UserInfo;

public interface UserInfoMapper {
	
	//登陆
	UserInfo getuser_login(Map<Object,Object> map);
	
	//模糊查询
	List<UserInfo> getuser_by_name(Map<Object,Object>map); 
	
	int get_count(UserInfo user);
	
	//根据id查询用户
	UserInfo getuser_byid(int id);
	
	//修改用户角色
	int updateUserRole(UserInfo user);
	
	
	/*------------------------------------------------------------*/
	int add_user(UserInfo user);  //这里用void或int均可
	int upd_user(UserInfo user);  //这里用void或int均可
	int del_user(int id);  //这里用void或int均可
	UserInfo get_login_user(Map<Object,Object> map);  //登录用的resultMap
	List<UserInfo> getuser_by_ids(List<UserInfo> list);  //根据id查列表
	List<UserInfo>get_userList(UserInfo user); //多条件查询
	List<UserInfo> getuser_byname(String userName); //根据name模糊查询
	

	
}
