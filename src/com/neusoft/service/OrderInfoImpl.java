package com.neusoft.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neusoft.beans.AllOrderInfo;
import com.neusoft.mapper.OrderInfoMapper;

@Service
public class OrderInfoImpl implements IOrderInfoService{

	@Resource
	OrderInfoMapper orderMapper ;

	@Override
	public List<AllOrderInfo> queryOrder(int uid) {
		// TODO Auto-generated method stub
		return orderMapper.queryOrder(uid);
	}
	
	

	
	
}
