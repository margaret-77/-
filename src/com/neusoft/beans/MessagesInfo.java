package com.neusoft.beans;

import java.sql.Time;

//���԰�
public class MessagesInfo {
	private int m_no;//���Ա��
	private String m_name;//����������
	private String m_phone;//��������ϵ��ʽ
    private String m_message;//����������
    private Time m_time;
    
	
	public Time getM_time() {
		return m_time;
	}
	public void setM_time(Time m_time) {
		this.m_time = m_time;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_message() {
		return m_message;
	}
	public void setM_message(String m_message) {
		this.m_message = m_message;
	}
	@Override
	public String toString() {
		return "MessagesInfo [m_no=" + m_no + ", m_name=" + m_name
				+ ", m_phone=" + m_phone + ", m_message=" + m_message
				+ ", m_time=" + m_time + "]";
	}
	

}
