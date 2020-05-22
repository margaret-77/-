/*package com.neusoft.controller;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.neusoft.beans.User;
import com.neusoft.mapper.UserMapper;
import com.neusoft.utils.PageInfo;
import com.neusoft.utils.PageUtil;
import com.neusoft.utils.StrUtil;
//关于后台用户信息部分
@Controller
@RequestMapping("/user1")
public class User {
	@Resource
	private UserMapper mapper;
	
	
	
	
	
	@RequestMapping("/searchAllUser")
	public String getAllUser(Model m) {
		List<User> userList = mapper.get_alluser();
		m.addAttribute("userList", userList);
		return "user/user_list";
	}
	// 分页
	@RequestMapping("/user_page_manage")
	public String getUser(@ModelAttribute("pageIndex") String pageIndex,
			@ModelAttribute("uname") String uname, Model m) {
		int pageSize = 3;
		System.out.println(uname);
		Map<Object, Object> map1 = new HashMap<Object, Object>();
		map1.put("uname", uname);
		int rowCount = mapper.get_Count(map1);
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
		List<User> userList = mapper.get_select_User(map);
		m.addAttribute("page", page);
		m.addAttribute("userList", userList);
		return "user/user_list";

	}

	@RequestMapping("/add_user")
	public String add_user(@ModelAttribute("user1")User user, Model m) {

		int result = mapper.add_user(user);
	System.out.println("进入了");
		if (result == 1) {
			m.addAttribute("msg", "添加成功");

		} else {
			m.addAttribute("msg", "添加失败");
		}

		return "user/user_add";

	}

	@RequestMapping("/user_add1")
	public String add() {
		
		return "user/user_add";
	}

	@RequestMapping("/del_user_byId")
	public String deleteUser(Integer[] ids) {

		String idStr = " ";
		for (int i = 0; i < ids.length; i++) {
			if (i == ids.length - 1) {
				idStr += ids[i];
			} else {
				idStr += ids[i] + ",";
			}
		}
		mapper.delUser_Byid(idStr);
		return "forward:user_page_manage";
	}

	// 删除用户
	@RequestMapping("/del_user")
	public String delUser(int uid) {
		mapper.del_user(uid);
		return "forward:user_page_manage";
	}

	// 根据id 修改用户
	@RequestMapping(value = "/update_user", method = RequestMethod.GET)
	public String updateUser(int uid, Model m) {
		User user = mapper.get_user_byId(uid);
		m.addAttribute("user", user);
		return "user/user_update";
	}
	// 修改
	@RequestMapping(value = "/update_user", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("user") User user, Model m) {
		int result = mapper.update_user(user);
		if (result == 1) {
			m.addAttribute("msg", "修改成功");

		} else {
			m.addAttribute("msg", "修改失败");
		}
		return "user/user_update";
	}
}
*/