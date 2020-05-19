package com.neusoft.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;



import com.neusoft.beans.RailwayInfo;
import com.neusoft.mapper.RailwayInfoMapper;
import com.neusoft.utils.PageInfo;
import com.neusoft.utils.PageUtil;
import com.neusoft.utils.StrUtil;
@Controller
public class RaiwayController {
	@Resource
	private RailwayInfoMapper  mapper;
	
	       //车次信息分页
			@RequestMapping("/railway_page_manage")
			public String getRailway(@ModelAttribute("pageIndex")String pageIndex,Model m){		
				int pageSize = 3;
				int rowCount = mapper.get_Count(); 
				int pageIndex_new = 1;
				if(!StrUtil.isNullOrEmptry(pageIndex)){
					pageIndex_new = Integer.parseInt(pageIndex);
				}
				PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
				Map<Object,Object> map = new HashMap<Object,Object>();
				map.put("beginRow", page.getBeginRow());
				map.put("pageSize", page.getPageSize());
				List<RailwayInfo> railwayList = mapper.get_select_Railway(map);
				m.addAttribute("page", page);
				m.addAttribute("railwayList",railwayList);
				return "backgroundDesk/railway/railway_list";
			}
			// 删除用户
			@RequestMapping("/del_railway")
			public String delRailway(int tid) {
				mapper.dele_Railway(tid);
				return "forward:railway_page_manage";
			}		
	
   @RequestMapping("/add_railway")
	public String add_railway(@ModelAttribute("railway") RailwayInfo railway, Model m) {
		int result = mapper.addRailway(railway);
		System.out.println(result);
		if (result == 1) {
			m.addAttribute("msg", "添加成功");

		} else {
			m.addAttribute("msg", "添加失败");
		}

		return "backgroundDesk/railway/railway_add";

	}
}
