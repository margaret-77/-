package com.neusoft.service;

import java.util.List;

import com.neusoft.beans.AllOrderInfo;

public interface IOrderInfoService {

	//≤È—Ø∂©µ•
	public List<AllOrderInfo> queryOrder(int uid);
}
