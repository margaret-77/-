package com.neusoft.mapper;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.neusoft.beans.User;
import com.neusoft.utils.PageInfo;

public interface UserMapper {
   public int add_user(User user);
   
	public int del_user(int uid);
	
	public int de_User(int userinfo_id);//根据用户名进行注销
	
	public int update_user(User user);

	public User get_user_byId(int uid);

	public List<User> get_alluser();

	public List<User> get_Page_User(PageInfo page); // 正常查询所有数据页中数据(分页查询1)

	public int getCount(); // 查询表中有多少条数据(全部的分页查询)

	 // 查询表中有多少条数据(全部的分页查询)
	
	public int delUser_Byid(String idStr);  //批量删除
	
	public int get_Count(Map<Object, Object> map);//分页
	
	public List<User> get_select_User(Map<Object, Object> map);//在分页中索引数据

	public List<User> selectList(Map<Object, Object> map);

	public User getUser(String userId);
	
	public int updateUser(Map<Object,Object> map);
	
	public User queryMoney(Map<Object,Object> map);
	public int addMoney(Map<Object,Object> map);
	public int insertUser(@Param("user") User user);
	public List<User> queryUser(@Param("user") User user);
public User queryUserByUserName(String userName);

}
