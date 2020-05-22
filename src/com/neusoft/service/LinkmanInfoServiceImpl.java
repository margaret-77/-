package com.neusoft.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neusoft.beans.LinkmanInfo;
import com.neusoft.mapper.LinkmanInfoMapper;

@Service
public class LinkmanInfoServiceImpl implements ILinkmanInfoService{
	
	@Resource
	LinkmanInfoMapper linkMapper ;
	
	@Override
	public List<LinkmanInfo> queryLinkByUser(String note){
		return linkMapper.queryLinkByUser(note);
	}

	@Override
	public int queryCount(String note) {
		// TODO Auto-generated method stub
		return linkMapper.queryCount(note);
	}

	@Override
	public int updateLink(Map<Object, Object> map) {
		// TODO Auto-generated method stub
		return linkMapper.updateLink(map);
	}
	
}
