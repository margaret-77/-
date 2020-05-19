package com.neusoft.beans;

import java.sql.Date;


public class NewsInfo {
	private int newsId;  //新闻编号
	private  String title; //新闻标题
	private  String author; //新闻标题
	private Date release_time; //发布时间
	
	private String content;//小内容
	private String content_detail;//具体内容
	
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
