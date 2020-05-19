 package com.neusoft.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.beans.MenuInfo;
import com.neusoft.beans.UserInfo;
import com.neusoft.mapper.MenuInfoMapper;

@Controller @RequestMapping("/menu")
public class MenuController {
	
	@Resource
	MenuInfoMapper mapper ;	
	@RequestMapping(value="/getMenutoLeft")
	public String getMenu(HttpSession session,Model model){
		UserInfo user = (UserInfo)session.getAttribute("user");		
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("parentId", 0);
		map.put("roleid", user.getRoleId());
		List<MenuInfo> menuList = mapper.getMenuList(map);  //一级菜单		
		System.out.println(menuList);
		for(MenuInfo m:menuList){
			if(m.getParentId()==0){
				Map<Object, Object> subMap = new HashMap<Object, Object>();
				subMap.put("parentId", m.getId());
				subMap.put("roleid", user.getRoleId());
				List<MenuInfo> menuListSub = mapper.getMenuList(subMap);   //子菜单
				m.setSubMenuList(menuListSub);
			}
		}
		
		model.addAttribute("menuList", menuList);
		 
		return "backgroundDesk/left";
	}

}
