package com.neusoft.utils;

public class PageInfo {
	private int pageSize; // ÿҳ��С
	private int pageIndex; // ��ǰ�ڼ�ҳ
	private int rowCount; // ������
	private int beginRow; // �ӵڼ��п�ʼ��ѯ
	private int pageCount; // �ܹ��ֶ���ҳ

	private boolean hasNext; // �Ƿ�����һҳ
	private boolean hasPre; // �Ƿ�����һҳ
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getRowCount() {
		return rowCount;
	}
	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}
	public int getBeginRow() {
		return beginRow;
	}
	public void setBeginRow(int beginRow) {
		this.beginRow = beginRow;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public boolean isHasNext() {
		return hasNext;
	}
	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}
	public boolean isHasPre() {
		return hasPre;
	}
	public void setHasPre(boolean hasPre) {
		this.hasPre = hasPre;
	}
	
}
