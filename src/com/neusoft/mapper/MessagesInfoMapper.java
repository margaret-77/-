package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.MessagesInfo;
import com.neusoft.beans.NewsInfo;
import com.neusoft.utils.PageInfo;

public interface MessagesInfoMapper {

    //用户向数据库中添加留言
	public int add_Messages(MessagesInfo msg);
	
	// 在分页中索引数据查询全部留言信息
	public List<MessagesInfo> get_select_Messages(Map<Object, Object> map);
	
	public List<MessagesInfo> get_Page_station(PageInfo page);

	public int get_Count(Map<Object, Object> map);
	
	public int delete_Messages(int m_no);//删除留言
	
	//关于新闻发布
	
	//新闻添加
	public int add_news(NewsInfo news);
	
	// 在分页中索引数据查询全部留言信息
	public List<NewsInfo> get_select_news(Map<Object, Object> map);
		
	public List<NewsInfo> get_Page_news(PageInfo page);

	public int get_news_Count(Map<Object, Object> map);
	
	//删除新闻
	public int delete_news(int m_no);   
		
}
