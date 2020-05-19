package com.neusoft.utils;


public class PageUtil {
	public static PageInfo getPageInfo(int pageSize, int rowCount, int pageIndex) {
		PageInfo p=new PageInfo();
		
		p.setPageSize(pageSize==0?10:pageSize);    //ÿҳ������ 
		p.setPageIndex(pageIndex);  //��ǰ�ڼ�ҳ
		p.setRowCount(rowCount);    //һ������������
		p.setBeginRow(pageSize*(pageIndex-1));      //�ӵڼ������ݿ�ʼ�� 
		p.setPageCount((rowCount+pageSize-1)/pageSize);    //һ������ҳ
		
		p.setHasNext(!(pageIndex==p.getPageCount()));  //�Ƿ�����һҳ  
		p.setHasPre(!(rowCount==0||pageIndex==1));  //�Ƿ�����һҳ 
		
		return p;
	}		
}
