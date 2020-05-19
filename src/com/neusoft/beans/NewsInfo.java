package com.neusoft.beans;

import java.sql.Date;


public class NewsInfo {
	private int newsId;  //���ű��
	private  String title; //���ű���
	private  String author; //���ű���
	private Date release_time; //����ʱ��
	
	private String content;//С����
	private String content_detail;//��������
	
	public int getNewsId() {
		return newsId;
	}

	public void setNewsId(int newsId) {
		this.newsId = newsId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	

	public Date getRelease_time() {
		return release_time;
	}

	public void setRelease_time(Date release_time) {
		this.release_time = release_time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getContent_detail() {
		return content_detail;
	}

	public void setContent_detail(String content_detail) {
		this.content_detail = content_detail;
	}

	@Override
	public String toString() {
		return "NewsInfo [newsId=" + newsId + ", title=" + title + ", author="
				+ author + ", release_time=" + release_time + ", content="
				+ content + ", content_detail=" + content_detail + "]";
	}

	
	
}
