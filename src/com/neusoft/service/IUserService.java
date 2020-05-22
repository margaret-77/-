package com.neusoft.service;

import java.util.List;
import java.util.Map;



import com.neusoft.beans.User;
import com.neusoft.beans.UserInfo;

public interface IUserService {
	public List<UserInfo> getAllUser(Map<Object,Object> map); 
	public int getCount(String userName);
	public int updateUser(Map<Object,Object> map);
	public int updateInfoUser(Map<Object,Object> map);
	public User queryMoney(Map<Object,Object> map);
	public int addMoney(Map<Object,Object> map);
	public int register(User user,UserInfo userinfo);
	public List<User> queryUser(User user);
	public User queryUserByUserName(String userName);
}
