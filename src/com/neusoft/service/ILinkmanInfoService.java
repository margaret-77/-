package com.neusoft.service;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.LinkmanInfo;


public interface ILinkmanInfoService {
	public List<LinkmanInfo> queryLinkByUser(String note);
	public int queryCount(String note);
	public int updateLink(Map<Object,Object> map);
}
