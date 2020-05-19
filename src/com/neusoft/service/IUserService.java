package com.neusoft.service;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.UserInfo;

public interface IUserService {
	public List<UserInfo> getAllUser(Map<Object,Object> map); 
	public int getCount(String userName);
}
