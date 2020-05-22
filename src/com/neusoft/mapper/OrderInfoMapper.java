package com.neusoft.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.neusoft.beans.AllOrderInfo;
import com.neusoft.beans.OrderInfo;

public interface OrderInfoMapper {
	
	         //向数据库中添加一个订单
			public int  addOrder(OrderInfo order);
			
			//修改 订单 付款信息
			public void updateOrderStatus(int oid, String status);
			
			//删除订单
			public void deleteOrder(int oid);
			
			//根据用户ID获取到订单信息
			public ArrayList<OrderInfo> getOrderByUid(int uid);
			
			//锁定订单座位
			public HashMap<String,String> lockSeat(String tid, String date, String ctype, String nextTo, int fromIndex, int toIndex);
			
			public List<AllOrderInfo> queryOrder(int uid);
			


}
