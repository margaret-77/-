package com.neusoft.service;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.MessagesInfo;
import com.neusoft.utils.PageInfo;

public interface IMessagesSerivce {
	
	public int  add_Messages(MessagesInfo msg);
	
	// 在分页中索引数据查询全部留言信息
	public List<MessagesInfo> get_select_Messages(Map<Object, Object> map);
	
	public List<MessagesInfo> get_Page_station(PageInfo page);

	public int get_Count(Map<Object, Object> map);
	
	public int delete_Messages(int m_no);//删除留言
}
