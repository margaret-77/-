package com.neusoft.mapper;



import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.neusoft.beans.User;
import com.neusoft.utils.PageInfo;

public interface UserMapper {
   public int add_user(User user);
   
	public int del_user(int uid);
	
	public int de_User(int userinfo_id);//�����û�������ע��
	
	public int update_user(User user);

	public User get_user_byId(int uid);

	public List<User> get_alluser();

	public List<User> get_Page_User(PageInfo page); // ������ѯ��������ҳ������(��ҳ��ѯ1)

	public int getCount(); // ��ѯ�����ж���������(ȫ���ķ�ҳ��ѯ)

	 // ��ѯ�����ж���������(ȫ���ķ�ҳ��ѯ)
	
	public int delUser_Byid(String idStr);  //����ɾ��
	
	public int get_Count(Map<Object, Object> map);//��ҳ
	
	public List<User> get_select_User(Map<Object, Object> map);//�ڷ�ҳ����������

	public List<User> selectList(Map<Object, Object> map);

	public User getUser(String userId);
	
	public int updateUser(Map<Object,Object> map);
	
	public User queryMoney(Map<Object,Object> map);
	public int addMoney(Map<Object,Object> map);
	public int insertUser(@Param("user") User user);
	public List<User> queryUser(@Param("user") User user);
public User queryUserByUserName(String userName);

}
