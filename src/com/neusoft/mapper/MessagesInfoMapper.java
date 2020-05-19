package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.MessagesInfo;
import com.neusoft.beans.NewsInfo;
import com.neusoft.utils.PageInfo;

public interface MessagesInfoMapper {

    //�û������ݿ����������
	public int add_Messages(MessagesInfo msg);
	
	// �ڷ�ҳ���������ݲ�ѯȫ��������Ϣ
	public List<MessagesInfo> get_select_Messages(Map<Object, Object> map);
	
	public List<MessagesInfo> get_Page_station(PageInfo page);

	public int get_Count(Map<Object, Object> map);
	
	public int delete_Messages(int m_no);//ɾ������
	
	//�������ŷ���
	
	//�������
	public int add_news(NewsInfo news);
	
	// �ڷ�ҳ���������ݲ�ѯȫ��������Ϣ
	public List<NewsInfo> get_select_news(Map<Object, Object> map);
		
	public List<NewsInfo> get_Page_news(PageInfo page);

	public int get_news_Count(Map<Object, Object> map);
	
	//ɾ������
	public int delete_news(int m_no);   
		
}
