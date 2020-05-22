package com.neusoft.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.text.Document;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.beans.User;
import com.neusoft.service.ILinkmanInfoService;
import com.neusoft.utils.PageInfo;
import com.neusoft.utils.PageUtil;
import com.neusoft.utils.StrUtil;

@Controller 
@RequestMapping("/link")
public class LinkController {
	
	@Autowired
	ILinkmanInfoService linkService;
	
	@RequestMapping("/link_page")
	public String getLink(@ModelAttribute("pageIndex") String pageIndex,
			@ModelAttribute("uname") String uname,@ModelAttribute("userAll") User user, Model m) {

		int pageSize = 3;
		System.out.println(uname);
		Map<Object, Object> map1 = new HashMap<Object, Object>();
		map1.put("uname", uname);
		int rowCount = linkService.queryCount(user.getIdcard());
		System.out.println(rowCount);
		int pageIndex_new = 1;
		if (!StrUtil.isNullOrEmptry(pageIndex)) {
			pageIndex_new = Integer.parseInt(pageIndex);
		}
		PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("uname", uname);
		map.put("beginRow", page.getBeginRow());
		map.put("pageSize", page.getPageSize());
		//List<User> userList = mapper.get_select_User(map);
		m.addAttribute("page", page);
		//m.addAttribute("linkList", userList);
		return "frontDesk/user/linkUser";

	}
	
	
	@RequestMapping("/update_link")
	public void updateLink(HttpSession session,HttpServletRequest request,HttpServletResponse response, Model m) throws IOException {
		String uname = request.getParameter("uname");
		String idcard = request.getParameter("idcard");
		String phone = request.getParameter("phone");
		String type = request.getParameter("select");
		String state = request.getParameter("state");
		String id = request.getParameter("id");
		Map<Object,Object> map = new HashMap<Object, Object>();
		map.put("uname", uname);
		map.put("idcard", idcard);
		map.put("phone", phone);
		map.put("type", type);
		map.put("state", state);
		map.put("id", Integer.parseInt(id));
		
		int updateLink = linkService.updateLink(map);
		if(updateLink==0){
			m.addAttribute("msg", "修改失败！");
			
		}else {
			m.addAttribute("msg", "修改成功！");
			System.out.println(1234567890);
			
		}
		/*
		return "frontDesk/user/linkUser";*/
	}
	
}
