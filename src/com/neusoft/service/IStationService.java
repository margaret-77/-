package com.neusoft.service;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.StationInfo;
import com.neusoft.utils.PageInfo;

public interface IStationService {
	
	public int add_station(StationInfo statoin);//添加站点

	public int delete_station(int sid);//删除站点

	public int update_station(StationInfo statoin);// 修改

	public StationInfo get_station_byId(int sid);// 根据id查询

	public List<StationInfo> get_station_byname(String tname);//根据车次名称查询中转站信息

	public List<StationInfo> getallstation();
	
	// 在分页中索引数据查询全部站信息
	
	public List<StationInfo> get_select_station(Map<Object, Object> map);

	// 在分页中索引数据-用做批量修改
	public List<StationInfo> get_select_allstation(Map<Object, Object> map);
	
	
	public List<StationInfo> get_Page_station(PageInfo page);// 分页

	public int get_Count(Map<Object, Object> map);
}
