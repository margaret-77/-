package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.RailwayInfo;

public interface RailwayInfoMapper {
	// �����ݿ������һ����
	public int addRailway(RailwayInfo railway);

	// ɾ��һ����
	public void dele_Railway(int tid);

	public int get_Count();// ��ҳ

	public List<RailwayInfo> get_select_Railway(Map<Object, Object> map);// �ڷ�ҳ����������
	/*
	 * public List<RailwayInfo> selectList(Map<Object, Object> map);
	 */
}
