package com.neusoft.beans;

import java.util.List;

public class StationInfoList {
	
	private List<StationInfo> stationList;

	public List<StationInfo> getStationList() {
		return stationList;
	}

	public void setStationList(List<StationInfo> stationList) {
		this.stationList = stationList;
	}

	@Override
	public String toString() {
		return "StationInfoList [stationList=" + stationList + "]";
	}

	

}
