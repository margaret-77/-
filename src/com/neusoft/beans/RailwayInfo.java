package com.neusoft.beans;

public class RailwayInfo {
	private  int tid;
	private  String tname;
	private int rid;
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	@Override
	public String toString() {
		return "RailwayInfo [tid=" + tid + ", tname=" + tname + ", rid=" + rid
				+ "]";
	}


}