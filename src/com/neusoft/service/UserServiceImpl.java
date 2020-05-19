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

	//查询所有用户
	@Override
	public List<UserInfo> getAllUser(Map<Object,Object> map) {
		List<UserInfo> userList = mapper.getuser_by_name(map);
		return userList;
	}

	//带userName模糊查询查询数据条数
	@Override
	public int getCount(String userName) {
		UserInfo user = new UserInfo();
		user.setUserName(userName);
	return mapper.get_count(user);
	}
	
	//根据id查询单个用户
	public UserInfo getUserById(int id){
		return mapper.getuser_byid(id);
	}
	
	//修改用户角色
	public int updateUserRole(UserInfo user){
		return mapper.updateUserRole(user);
	}

}
