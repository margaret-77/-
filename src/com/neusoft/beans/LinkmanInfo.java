package com.neusoft.beans;

//������ϵ�����ݱ�
public class LinkmanInfo {

	private int linkmanId;

	private String uname;// ����

	private String idcard;

	private String tel;

	private String type; // �˳������� 1��ѧ�� 2������ 3����ͯ 4������

	private String email;

	private String note;

	private String idcard_no;

	public int getLinkmanId() {
		return linkmanId;
	}

	public void setLinkmanId(int linkmanId) {
		this.linkmanId = linkmanId;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getIdcard() {
		return idcard;
	}

	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getIdcard_no() {
		return idcard_no;
	}

	public void setIdcard_no(String idcard_no) {
		this.idcard_no = idcard_no;
	}

	@Override
	public String toString() {
		return "LinkmanInfo [linkmanId=" + linkmanId + ", uname=" + uname
				+ ", idcard=" + idcard + ", tel=" + tel + ", type=" + type
				+ ", email=" + email + ", note=" + note + ", idcard_no="
				+ idcard_no + "]";
	}
	
}
