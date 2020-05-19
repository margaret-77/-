package com.neusoft.beans;

import java.io.Serializable;
import java.sql.Time;
import java.util.Date;
  //添加站点信息https://www.cnblogs.com/tanzq/p/8451226.html
public class StationInfo implements Serializable{
	   private int tid;
	   private String  tname;
       private int sid;
	   private String start_sid;
	   private String end_sid;
	/*   @DateTimeFormat(pattern = "yyyy-MM-dd") */ 
	 
	   private Date start_day;
	/*   @DateTimeFormat(pattern="hh:mm:ss")  
		 */
	   private Time  arrive_time;
	   
	 /*  @DateTimeFormat(pattern="hh:mm:ss")  */
	   private Time  start_time;
	   
	  
	   private Date arrive_day;
	   private String stop_time;
	   private String sticket;
	   private double pice;
	   
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public double getPice() {
		return pice;
	}
	public void setPice(double pice) {
		this.pice = pice;
	}
	public String getStop_time() {
		return stop_time;
	}
	public void setStop_time(String stop_time) {
		this.stop_time = stop_time;
	}
	public String getSticket() {
		return sticket;
	}
	public void setSticket(String sticket) {
		this.sticket = sticket;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
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
	public Date getStart_day() {
		return start_day;
	}
	public void setStart_day(Date start_day) {
		this.start_day = start_day;
	}
	public Time getArrive_time() {
		return arrive_time;
	}
	public void setArrive_time(Time arrive_time) {
		this.arrive_time = arrive_time;
	}
	public Time getStart_time() {
		return start_time;
	}
	public void setStart_time(Time start_time) {
		this.start_time = start_time;
	}
	public Date getArrive_day() {
		return arrive_day;
	}
	public void setArrive_day(Date arrive_day) {
		this.arrive_day = arrive_day;
	}
	@Override
	public String toString() {
		return "StationInfo [tid=" + tid + ", tname=" + tname + ", sid=" + sid
				+ ", start_sid=" + start_sid + ", end_sid=" + end_sid
				+ ", start_day=" + start_day + ", arrive_time=" + arrive_time
				+ ", start_time=" + start_time + ", arrive_day=" + arrive_day
				+ ", stop_time=" + stop_time + ", sticket=" + sticket
				+ ", pice=" + pice + "]";
	}
	
	   
}
