package com.neusoft.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.beans.OrderInfo;
import com.neusoft.mapper.OrderInfoMapper;
@Controller
public class OrderController {
	
	@Resource
	OrderInfoMapper mapper;
	
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
}
