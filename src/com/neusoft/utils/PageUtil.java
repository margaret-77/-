package com.neusoft.utils;


public class PageUtil {
	public static PageInfo getPageInfo(int pageSize, int rowCount, int pageIndex) {
		PageInfo p=new PageInfo();
		
		p.setPageSize(pageSize==0?10:pageSize);    //每页多少条 
		p.setPageIndex(pageIndex);  //当前第几页
		p.setRowCount(rowCount);    //一共多少条数据
		p.setBeginRow(pageSize*(pageIndex-1));      //从第几条数据开始查 
		p.setPageCount((rowCount+pageSize-1)/pageSize);    //一共多少页
		
		p.setHasNext(!(pageIndex==p.getPageCount()));  //是否有下一页  
		p.setHasPre(!(rowCount==0||pageIndex==1));  //是否有上一页 
		
		return p;
	}		
}
