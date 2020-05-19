package com.neusoft.controller;
import java.io.IOException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import com.neusoft.beans.UserInfo;
import com.neusoft.dao.IUserDao;
import com.neusoft.mapper.UserInfoMapper;

@Controller
public class UserAction {	
	@Resource(name="userDaoImpl")
	IUserDao dao;
	@Resource(name="userInfoMapper")
	UserInfoMapper mapper;	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public void getUserLogin(String userName,String password,HttpSession session,HttpServletResponse request,HttpServletResponse response,Model m) throws IOException{
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("userName", userName);
		map.put("password", password);		
		UserInfo user = mapper.getuser_login(map);	
		
		if(user!=null){
			session.setAttribute("user", user);	
			if(user.getU_type()==1){ //管理员
			response.sendRedirect("backgroundDesk/main.jsp");
				
			}else if(user.getU_type()==2){//售票员
				System.out.println("售票员");
				response.sendRedirect("main.jsp");
			}else{//普通用户
				System.out.println("普通用户登录");
				
				response.sendRedirect("frontDesk/index.jsp");
				}
			}else{
			m.addAttribute("loginMsg", "用户名或密码错误！");
			response.sendRedirect("login.jsp");
		}
		
	}
	@RequestMapping("/testMapper")
	public String testMapper(Model m){
		UserInfo user= mapper.getuser_byid(1);
		m.addAttribute("user", user);
		m.addAttribute("msg", "进入主页面");
		return "main";
	}
	
	@RequestMapping("/search_all")
	public String test(Model m){
		List<UserInfo> userList = dao.getAllUser();
		m.addAttribute("userList", userList);
		return "user_manage";
	}
	
	@RequestMapping(value="/user_add")
	public String addUser(@ModelAttribute("user")UserInfo user,Model m){
		dao.addUser(user);
		m.addAttribute("msg", "添加成功");
		return "user_add";
	}
	
	@RequestMapping(value="/user_del")
	public String delUser(int id){
		dao.delUser(id);
		return "forward:search_all";
	}
	
	@RequestMapping(value="/user_update",method=RequestMethod.GET)
	public String searchToUpd(int id,Model m){
		UserInfo user = dao.getUserById(id);
		m.addAttribute("user", user);
		return "user_update";
	}
	
	@RequestMapping(value="/user_update",method=RequestMethod.POST)
	public String updateUser(@ModelAttribute("user")UserInfo user,Model m){
		dao.updUser(user);
		m.addAttribute("msg", "修改成功");
		return "user_update";
	}
	
}
