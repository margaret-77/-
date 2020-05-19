package com.neusoft.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.beans.MessagesInfo;
import com.neusoft.beans.NewsInfo;
import com.neusoft.mapper.MessagesInfoMapper;
import com.neusoft.service.IMessagesSerivce;
import com.neusoft.utils.PageInfo;
import com.neusoft.utils.PageUtil;
import com.neusoft.utils.StrUtil;

@Controller
@RequestMapping("/messages")
public class MessagesController {
	@Resource
	MessagesInfoMapper mapper;
	@Autowired
	private IMessagesSerivce messagesService;
	
	   // 全部站点信息进行分页查询
		@RequestMapping("/messages_page_manager")
		public String get_messages(@ModelAttribute("pageIndex") String pageIndex,Model m) {
			int pageSize = 5;
			Map<Object, Object> map = new HashMap<Object, Object>();
			int rowCount = messagesService.get_Count(map);
			int pageIndex_new = 1;
			if (!StrUtil.isNullOrEmptry(pageIndex)) {
				pageIndex_new = Integer.parseInt(pageIndex);
			}
			PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
			
			map.put("beginRow", page.getBeginRow());
			map.put("pageSize", page.getPageSize());
			List<MessagesInfo> messageslist = messagesService.get_Page_station(page);
			m.addAttribute("page", page);
			m.addAttribute("messageslist", messageslist);
			return "backgroundDesk/messages/messages_list";
		}
		
		@RequestMapping("/add_lyan")
		public String add_MessagesInfo(MessagesInfo msg, Model m) {
			
			int  result = messagesService.add_Messages(msg);
			if(msg==null){
				System.out.println(1234569);
				
			}
			if (result == 1) {
				m.addAttribute("msg1", "留言成功 ！谢谢您提的宝贵意见！");

			} else {
				m.addAttribute("msg1", "添加失败");
			}
            return "frontDesk/contact";
	}
		 //根据id删除
		@RequestMapping("/del_ht_Messages")
		public String del_Messages(int m_no) {
			messagesService.delete_Messages(m_no);			
			return "forward:messages_page_manager";
		}
		
		//关于新闻信息
		

		@RequestMapping("/news_page_manager")
		public String getNews(@ModelAttribute("pageIndex") String pageIndex,Model m) {
			int pageSize =2;
			Map<Object, Object> map = new HashMap<Object, Object>();
			int rowCount = mapper.get_news_Count(map);
			int pageIndex_new = 1;
			if (!StrUtil.isNullOrEmptry(pageIndex)) {
				pageIndex_new = Integer.parseInt(pageIndex);
			}
			PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
			
			map.put("beginRow", page.getBeginRow());
			map.put("pageSize", page.getPageSize());
			List<NewsInfo> newsList = mapper.get_Page_news(page);
			m.addAttribute("page", page);
			m.addAttribute("newsList", newsList);
			return "backgroundDesk/messages/newsList";
		}
		
		@RequestMapping("/add_news")
		public String add_NewsInfo(NewsInfo msg, Model m) {
			
			int  result = mapper.add_news(msg);
			
			if (result == 1) {
				m.addAttribute("msg", "新闻发布成功！");

			} else {
				m.addAttribute("msg", "添加失败");
			}
            return "frontDesk/contact";
	}
		 //根据id删除
		@RequestMapping("/del_ht_News")
		public String del_news(int newsId) {
			mapper.delete_news(newsId);			
			return "forward:ews_page_manager";
		}
		
		
		

}
