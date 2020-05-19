package com.neusoft.beans;

public class OrderInfo {
	private int oid;
	private int uid;
	private String passenger_id;
	private String passenger_name;
	private int tid;
	private int cid;
	private String location;
	private String start_sid;
	private String end_sid;
	private String date;
	private String create_at;
	private String status = "未付款";
	
	//以下为非必须属性
	private String tname;
	private String fromCity;
	private String toCity;
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getPassenger_id() {
		return passenger_id;
	}
	public void setPassenger_id(String passenger_id) {
		this.passenger_id = passenger_id;
	}
	public String getPassenger_name() {
		return passenger_name;
	}
	public void setPassenger_name(String passenger_name) {
		this.passenger_name = passenger_name;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	public String getCreate_at() {
		return create_at;
	}
	public void setCreate_at(String create_at) {
		this.create_at = create_at;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getFromCity() {
		return fromCity;
	}
	public void setFromCity(String fromCity) {
		this.fromCity = fromCity;
	}
	public String getToCity() {
		return toCity;
	}
	public void setToCity(String toCity) {
		this.toCity = toCity;
	}
	
	@Override
	public String toString() {
		return "OrderInfo [oid=" + oid + ", uid=" + uid + ", passenger_id="
				+ passenger_id + ", passenger_name=" + passenger_name
				+ ", tid=" + tid + ", cid=" + cid + ", location=" + location
				+ ", start_sid=" + start_sid + ", end_sid=" + end_sid
				+ ", date=" + date + ", create_at=" + create_at + ", status="
				+ status + ", tname=" + tname + ", fromCity=" + fromCity
				+ ", toCity=" + toCity + "]";
	}
	
	
}
