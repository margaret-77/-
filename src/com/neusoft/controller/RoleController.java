package com.neusoft.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.beans.MenuInfo;
import com.neusoft.beans.RoleInfo;
import com.neusoft.beans.RoleMenu;
import com.neusoft.beans.UserInfo;
import com.neusoft.mapper.MenuInfoMapper;
import com.neusoft.mapper.RoleInfoMapper;
import com.neusoft.service.UserServiceImpl;
import com.neusoft.utils.PageInfo;
import com.neusoft.utils.PageUtil;
import com.neusoft.utils.StrUtil;

@Controller  @RequestMapping("/role")
public class RoleController {
	
	@Resource
	RoleInfoMapper roleMapper ;
	@Resource
	MenuInfoMapper menuMapper;
	@Resource
	UserServiceImpl impl;
	
	//增加角色
	@RequestMapping("/addRole")
	public String addRole(@ModelAttribute("role")RoleInfo role,Model model){
		roleMapper.addRole(role);
		model.addAttribute("msg", "添加成功");
		return "role/role_add";
	}
	
	//查询所有角色
	@RequestMapping("/roleManage")
	public String manage(Model model){
		List<RoleInfo> roleList = roleMapper.getAllRole();
		model.addAttribute("roleList", roleList);
		return "role/role_manage";
	}
	
	//角色权限分配，查询所有菜单，根据roleID查询对应的菜单
	@RequestMapping("/goToRoleEdit")
	public String goToRoleEdit(@ModelAttribute("roleId")int roleId,Model model){
		//查询所有菜单
		List<MenuInfo> menuList = menuMapper.getAllMenuList(0);
		for(MenuInfo m:menuList){
			if(m.getParentId()==0){
				m.setSubMenuList(menuMapper.getAllMenuList(m.getId()));
			}
		}
		model.addAttribute("menuList", menuList);
		
		
		//根据roleID查询对应的菜单,拼成字符串
		List<RoleMenu> roleMenuList = roleMapper.getRoleMenuId(roleId);
		String menuIdStr = "";
		for(int i = 0 ; i<roleMenuList.size() ; i++ ){
			if(i != roleMenuList.size() - 1){
				menuIdStr += roleMenuList.get(i).getMenuId()+",";
			}else{
				menuIdStr += roleMenuList.get(i).getMenuId();
			}
		}
		System.out.println("角色id："+roleId);
		System.out.println("角色对应菜单id是："+menuIdStr);
		
		model.addAttribute("menuIdStr", menuIdStr);
		
		return "role/role_edit";
	}
	
	//修改角色对应的菜单
	@RequestMapping("/roleMenuUpdate")
	public String roleMenuUpdate(int roleId,Model model,HttpServletRequest request){
		
		//先删除
		roleMapper.delRoleMenu(roleId); 
		
		//在重新增加
		String[]  menuIdList  = request.getParameterValues("ids");
		for(String menuId:menuIdList){
			System.out.println("更新的菜单id"+menuId);
			Map<Object,Object> map = new HashMap<Object, Object>();
			map.put("roleId", roleId);
			map.put("menuId", menuId);
			roleMapper.addRoleMenu(map);
		}
		
		//查询所有菜单
		List<MenuInfo> menuList = menuMapper.getAllMenuList(0);
		for(MenuInfo m:menuList){
			if(m.getParentId()==0){
				m.setSubMenuList(menuMapper.getAllMenuList(m.getId()));
			}
		}
		model.addAttribute("menuList", menuList);
		
		//最后重新查询角色对应的id,拼成字符串
		List<RoleMenu> roleMenuList = roleMapper.getRoleMenuId(roleId);
		String menuIdStr = "";
		for(int i = 0 ; i<roleMenuList.size() ; i++ ){
			if(i != roleMenuList.size() - 1){
				menuIdStr += roleMenuList.get(i).getMenuId()+",";
			}else{
				menuIdStr += roleMenuList.get(i).getMenuId();
			}
		}
		System.out.println("角色id："+roleId);
		System.out.println("角色对应菜单id是："+menuIdStr);
		
		model.addAttribute("menuIdStr", menuIdStr);
		model.addAttribute("msg", "更新成功");
		return "role/role_edit";
	}
	
	
	//查询所有用户(以便 对其分配角色)
	@RequestMapping("/search_user_list")
	public String getUser(@ModelAttribute("pageIndex")String pageIndex,@ModelAttribute("userName")String userName,Model m){
		int pageSize = 3 ;
		int rowCount = impl.getCount(userName);
		int pageIndex_new = 1;
		if(!StrUtil.isNullOrEmptry(pageIndex)){
			pageIndex_new = Integer.parseInt(pageIndex);
		}
		PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
		Map<Object,Object> map = new HashMap<Object,Object>();
		map.put("userName", userName);
		map.put("beginRow", page.getBeginRow());
		map.put("pageSize", page.getPageSize());
		List<UserInfo> userList = impl.getAllUser(map);
		
		m.addAttribute("page", page);
		m.addAttribute("userList", userList);
		
		return "role/user_role_list";
	}
	
	//给用户分配角色
	@RequestMapping("/useRoleManage")
	public String userRoleManage(int id,Model model){
		UserInfo user = impl.getUserById(id);
		List<RoleInfo> roleList = roleMapper.getAllRole();
		
		model.addAttribute("user", user);
		model.addAttribute("roleList", roleList);
		return "role/user_role_manage";
	}
	
	//修改用户角色权限
	@RequestMapping("/updateUserRole")
	public String updateUserRole(Model model,int userId,int roleId){
		UserInfo user = impl.getUserById(userId);
		user.setRoleId(roleId);
		impl.updateUserRole(user);  //修改
		
		List<RoleInfo> roleList = roleMapper.getAllRole();  //查询角色
		model.addAttribute("roleList", roleList);
		model.addAttribute("user", user);
		model.addAttribute("msg", "修改成功");
		return "role/user_role_manage";
	}
	
	
}
