package com.neusoft.beans;

import java.util.Date;

public class AllOrderInfo {

	private int oid;//订单编号
	private String passenger_name;
	private String start_sid;//姓名
	private String end_sid;//姓名
	private String pice;//姓名
	private String tname;//起始地
	private String cid;//目的地
	private String location;//车次id
	private String ctype;//席位id
	private String start_time;//座位号
	private Date date;//下单时间
	private String status;//订单状态
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getPassenger_name() {
		return passenger_name;
	}
	public void setPassenger_name(String passenger_name) {
		this.passenger_name = passenger_name;
	}
	public String getStart_sid() {
		return start_sid;
	}
	public void setStart_sid(String start_sid) {
		this.start_sid = start_sid;
	}
	public String getEnd_sid() {
		return end_sid;
	}
	public void setEnd_sid(String end_sid) {
		this.end_sid = end_sid;
	}
	public String getPice() {
		return pice;
	}
	public void setPice(String pice) {
		this.pice = pice;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "AllOrderInfo [oid=" + oid + ", passenger_name="
				+ passenger_name + ", start_sid=" + start_sid + ", end_sid="
				+ end_sid + ", pice=" + pice + ", tname=" + tname + ", cid="
				+ cid + ", location=" + location + ", ctype=" + ctype
				+ ", start_time=" + start_time + ", date=" + date + ", status="
				+ status + "]";
	}
	
	
	
}
