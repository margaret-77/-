package com.neusoft.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neusoft.beans.UserInfo;
import com.neusoft.mapper.UserInfoMapper;

@Service

public class UserServiceImpl implements IUserService{
	
	@Resource
	UserInfoMapper mapper ;

	//��ѯ�����û�
	@Override
	public List<UserInfo> getAllUser(Map<Object,Object> map) {
		List<UserInfo> userList = mapper.getuser_by_name(map);
		return userList;
	}

	//��userNameģ����ѯ��ѯ��������
	@Override
	public int getCount(String userName) {
		UserInfo user = new UserInfo();
		user.setUserName(userName);
	return mapper.get_count(user);
	}
	
	//����id��ѯ�����û�
	public UserInfo getUserById(int id){
		return mapper.getuser_byid(id);
	}
	
	//�޸��û���ɫ
	public int updateUserRole(UserInfo user){
		return mapper.updateUserRole(user);
	}

}
