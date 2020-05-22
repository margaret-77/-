package com.neusoft.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.neusoft.beans.User;
import com.neusoft.beans.UserInfo;
import com.neusoft.mapper.UserInfoMapper;
import com.neusoft.mapper.UserMapper;

@Transactional
@Service
public class UserServiceImpl implements IUserService{
	
	@Resource
	UserInfoMapper mapper ;

	@Resource
	UserMapper userMapper ;
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
		System.out.println(user);
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

	@Override
	public int updateUser(Map<Object,Object> map) {
		return userMapper.updateUser(map);
	}
	@Override
	public int updateInfoUser(Map<Object,Object> map){
		return mapper.updateInfoUser(map);
	}
	@Override
	public User queryMoney(Map<Object,Object> map) {
		// TODO Auto-generated method stub
		return userMapper.queryMoney(map);
	}

	@Override
	public int addMoney(Map<Object,Object> map) {
		// TODO Auto-generated method stub
		return userMapper.addMoney(map);
	}

	@Override
	public int register(User user, UserInfo userinfo) {
		// TODO Auto-generated method stub
		int insertUser = userMapper.insertUser(user);
		int insertUserInfo = mapper.insertUserInfo(userinfo);
		if(insertUser == 0 || insertUserInfo == 0){
			return 0;
		}
		return insertUser+insertUserInfo;
	}

	@Override
	public List<User> queryUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.queryUser(user);
	}

	@Override
	public User queryUserByUserName(String userName) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByUserName(userName);
	}
	

}
