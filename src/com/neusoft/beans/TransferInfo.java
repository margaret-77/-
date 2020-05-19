package com.neusoft.beans;

import java.sql.Time;


public class TransferInfo {
	private int trid;
	private String sname;
	private String t_sid;
	private Time arrive_time; 
	private String stop_time;
	private Time start_time; 
	private String ticket_pice;
	private String sticket;
	
	public String getT_sid() {
		return t_sid;
	}
	public void setT_sid(String t_sid) {
		this.t_sid = t_sid;
	}
	public String getSticket() {
		return sticket;
	}
	public void setSticket(String sticket) {
		this.sticket = sticket;
	}
	public int getTrid() {
		return trid;
	}
	public void setTrid(int trid) {
		this.trid = trid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Time getArrive_time() {
		return arrive_time;
	}
	public void setArrive_time(Time arrive_time) {
		this.arrive_time = arrive_time;
	}
	public String getStop_time() {
		return stop_time;
	}
	public void setStop_time(String stop_time) {
		this.stop_time = stop_time;
	}
	public Time getStart_time() {
		return start_time;
	}
	public void setStart_time(Time start_time) {
		this.start_time = start_time;
	}
	public String getTicket_pice() {
		return ticket_pice;
	}
	public void setTicket_pice(String ticket_pice) {
		this.ticket_pice = ticket_pice;
	}
	@Override
	public String toString() {
		return "TransferInfo [trid=" + trid + ", sname=" + sname + ", t_sid="
				+ t_sid + ", arrive_time=" + arrive_time + ", stop_time="
				+ stop_time + ", start_time=" + start_time + ", ticket_pice="
				+ ticket_pice + ", sticket=" + sticket + "]";
	}
	
	
	
}
