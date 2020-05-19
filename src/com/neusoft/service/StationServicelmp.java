package com.neusoft.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neusoft.beans.StationInfo;
import com.neusoft.mapper.StationInfoMapper;
import com.neusoft.utils.PageInfo;
@Service
public class StationServicelmp implements IStationService{
	
	@Resource
	StationInfoMapper mapper ;

	@Override
	public int add_station(StationInfo statoin) {
		
		return mapper.add_station(statoin);
		
	}

	@Override
	public int delete_station(int sid) {
		
	return mapper.delete_station(sid);
	
	}

	@Override
	public int update_station(StationInfo statoin) {
	
		return mapper.update_station(statoin);
	}

	@Override
	public StationInfo get_station_byId(int sid) {
		
		return mapper.get_station_byId(sid);
	}

	@Override
	public List<StationInfo> get_station_byname(String tname) {

		return mapper.get_station_byname(tname);
	}

	@Override
	public List<StationInfo> getallstation() {
		 return mapper.getallstation();
	}

	@Override
	public List<StationInfo> get_select_station(Map<Object, Object> map) {
		return mapper.get_select_station(map);
	}

	@Override
	public List<StationInfo> get_select_allstation(Map<Object, Object> map) {
		
		return mapper.get_select_allstation(map);
	}

	@Override
	public List<StationInfo> get_Page_station(PageInfo page) {
		
		return mapper.get_Page_station(page);
	}

	@Override
	public int get_Count(Map<Object, Object> map) {
		
		return mapper.get_Count(map);
	}

}
