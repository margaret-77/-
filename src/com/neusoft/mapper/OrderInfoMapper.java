package com.neusoft.mapper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.neusoft.beans.AllOrderInfo;
import com.neusoft.beans.OrderInfo;

public interface OrderInfoMapper {
	
	         //�����ݿ������һ������
			public int  addOrder(OrderInfo order);
			
			//�޸� ���� ������Ϣ
			public void updateOrderStatus(int oid, String status);
			
			//ɾ������
			public void deleteOrder(int oid);
			
			//�����û�ID��ȡ��������Ϣ
			public ArrayList<OrderInfo> getOrderByUid(int uid);
			
			//����������λ
			public HashMap<String,String> lockSeat(String tid, String date, String ctype, String nextTo, int fromIndex, int toIndex);
			
			public List<AllOrderInfo> queryOrder(int uid);
			


}
