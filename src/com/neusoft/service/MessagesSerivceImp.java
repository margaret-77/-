package com.neusoft.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neusoft.beans.MessagesInfo;
import com.neusoft.mapper.MessagesInfoMapper;
import com.neusoft.utils.PageInfo;

@Service
public class MessagesSerivceImp implements IMessagesSerivce {
	@Resource
	MessagesInfoMapper mapper ;


	@Override
	public int add_Messages(MessagesInfo msg) {
		
		return mapper.add_Messages(msg);
	}

	@Override
	public List<MessagesInfo> get_select_Messages(Map<Object, Object> map) {
	
		return mapper.get_select_Messages(map);
	}

	@Override
	public List<MessagesInfo> get_Page_station(PageInfo page) {
	
		return mapper.get_Page_station(page);
	}

	@Override
	public int get_Count(Map<Object, Object> map) {
		
		return mapper.get_Count(map);
	}

	@Override
	public int delete_Messages(int m_no) {
		
		return mapper.delete_Messages(m_no);
	}

}
