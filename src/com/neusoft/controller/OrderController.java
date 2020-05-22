package com.neusoft.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.beans.AllOrderInfo;
import com.neusoft.beans.OrderInfo;
import com.neusoft.beans.User;
import com.neusoft.mapper.OrderInfoMapper;
import com.neusoft.service.IOrderInfoService;
import com.neusoft.service.IUserService;
@Controller
public class OrderController {
	
	@Resource
	OrderInfoMapper mapper;
	
	@Autowired
	IOrderInfoService orderService;
	
	@Autowired
	IUserService userService;
	
	@RequestMapping("/add_Order")
	public String add_order(@ModelAttribute("order") OrderInfo order, Model m) {
		
		int  result = mapper.addOrder(order);
		System.out.println(result);
		if (result == 1) {
			m.addAttribute("msg", "添加成功");

		} else {
			m.addAttribute("msg", "添加失败");
		}

		return "order/order_add";

	}
	@RequestMapping("/order_add1")
	public String add() {
		System.out.println("2333");
		return "order/order_add";
	}
	
	@RequestMapping("/queryOrder")
	public String queryOrder(HttpServletRequest request,HttpServletResponse response,Model m) throws IOException {
		String userName = request.getParameter("username");
		
		User queryUserByUserName = userService.queryUserByUserName(userName);
		List<AllOrderInfo> queryOrder = orderService.queryOrder(queryUserByUserName.getUid());
		if (queryOrder.size() == 0) {
			m.addAttribute("msg", "查询订单信息失败");
			response.sendRedirect("msg.jsp");
		}
		m.addAttribute("queryOrder",queryOrder);
		
		return "frontDesk/user/order";
	}
	
}
