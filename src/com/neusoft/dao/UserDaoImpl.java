package com.neusoft.dao;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import com.neusoft.beans.UserInfo;

@Repository
public class UserDaoImpl implements IUserDao{
	@Resource(name="sqlSessionFactory")
	private  SqlSessionFactory factory; 
	
	public UserInfo getUserById(int id) {
		SqlSession session=factory.openSession();
		UserInfo user=session.selectOne("user.getuser_byid",id);
		return user;
	}

	public int addUser(UserInfo user) {
		SqlSession session=factory.openSession();
		int result=session.insert("user.add_user",user);
		session.commit();
		return result;
	}

	@Override
	public int delUser(int id) {
		SqlSession session=factory.openSession();
		int result=session.delete("user.delete_user",id);
		session.commit();
		return result;
	}

	@Override
	public int updUser(UserInfo user) {
		SqlSession session = factory.openSession();
		int result=session.update("user.update_user", user);
		session.commit();
		return result;
	}

	@Override
	public List<UserInfo> getAllUser() {
		SqlSession session = factory.openSession();
		List<UserInfo> userList =session.selectList("user.search_all_user");
		return userList;
	}

	@Override
	public UserInfo getLoginUser(Map<Object,Object> map) {
		SqlSession session = factory.openSession();
		UserInfo user =session.selectOne("user.getlogin_user",map);
		return user;
	}

	@Override
	public List<UserInfo> getUserByName(String userName) {
		SqlSession session = factory.openSession();
		List<UserInfo> userList =session.selectList("user.getuser_byname",userName);
		return userList;
	}
	
}
