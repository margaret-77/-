package com.neusoft.service;

import java.util.List;
import java.util.Map;

import com.neusoft.beans.StationInfo;
import com.neusoft.utils.PageInfo;

public interface IStationService {
	
	public int add_station(StationInfo statoin);//���վ��

	public int delete_station(int sid);//ɾ��վ��

	public int update_station(StationInfo statoin);// �޸�

	public StationInfo get_station_byId(int sid);// ����id��ѯ

	public List<StationInfo> get_station_byname(String tname);//���ݳ������Ʋ�ѯ��תվ��Ϣ

	public List<StationInfo> getallstation();
	
	// �ڷ�ҳ���������ݲ�ѯȫ��վ��Ϣ
	
	public List<StationInfo> get_select_station(Map<Object, Object> map);

	// �ڷ�ҳ����������-���������޸�
	public List<StationInfo> get_select_allstation(Map<Object, Object> map);
	
	
	public List<StationInfo> get_Page_station(PageInfo page);// ��ҳ

	public int get_Count(Map<Object, Object> map);
}
