package com.neusoft.mapper;

import java.util.List;

import java.util.Map;

import com.neusoft.beans.UserInfo;

public interface UserInfoMapper {
	
	//��½
	UserInfo getuser_login(Map<Object,Object> map);
	
	//ģ����ѯ
	List<UserInfo> getuser_by_name(Map<Object,Object>map); 
	
	int get_count(UserInfo user);
	
	//����id��ѯ�û�
	UserInfo getuser_byid(int id);
	
	//�޸��û���ɫ
	int updateUserRole(UserInfo user);
	
	
	/*------------------------------------------------------------*/
	int add_user(UserInfo user);  //������void��int����
	int upd_user(UserInfo user);  //������void��int����
	int del_user(int id);  //������void��int����
	UserInfo get_login_user(Map<Object,Object> map);  //��¼�õ�resultMap
	List<UserInfo> getuser_by_ids(List<UserInfo> list);  //����id���б�
	List<UserInfo>get_userList(UserInfo user); //��������ѯ
	List<UserInfo> getuser_byname(String userName); //����nameģ����ѯ
	

	
}
