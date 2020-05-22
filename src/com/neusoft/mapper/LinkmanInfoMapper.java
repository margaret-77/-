package com.neusoft.mapper;

import java.util.List;
import java.util.Map;
import com.neusoft.beans.LinkmanInfo;
import com.neusoft.utils.PageInfo;

//常用联系人 
public interface LinkmanInfoMapper {

	public int add_linkman(LinkmanInfo linkman);

	public int del_linkman(int linkmanId);

	public int update_linkman(LinkmanInfo linkman);

	public LinkmanInfo get_linkman_byId(int linkmanId);//根据id查询数据

	public List<LinkmanInfo> get_allLinkman();//查询全部

	public List<LinkmanInfo> get_Page_Linkman(PageInfo page); // 正常查询所有数据页中数据(分页查询1)

	public int getCount(); // 查询表中有多少条数据(全部的分页查询)

	public int delLinkman_Byid(String idStr); // 批量删除

	public int get_Count(Map<Object, Object> map);// 分页

	public List<LinkmanInfo> get_select_Linkman(Map<Object, Object> map);// 在分页中索引数据

	public List<LinkmanInfo> selectList(Map<Object, Object> map);
	
	public List<LinkmanInfo> queryLinkByUser(String note);
	
	public int queryCount(String note);
	
	public int updateLink(Map<Object, Object> map);

}
