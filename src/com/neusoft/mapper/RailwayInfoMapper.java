package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.RailwayInfo;

public interface RailwayInfoMapper {
	// 向数据库中添加一辆车
	public int addRailway(RailwayInfo railway);

	// 删除一辆车
	public void dele_Railway(int tid);

	public int get_Count();// 分页

	public List<RailwayInfo> get_select_Railway(Map<Object, Object> map);// 在分页中索引数据
	/*
	 * public List<RailwayInfo> selectList(Map<Object, Object> map);
	 */
}
