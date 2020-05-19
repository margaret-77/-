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
	
	//���ӽ�ɫ
	@RequestMapping("/addRole")
	public String addRole(@ModelAttribute("role")RoleInfo role,Model model){
		roleMapper.addRole(role);
		model.addAttribute("msg", "��ӳɹ�");
		return "role/role_add";
	}
	
	//��ѯ���н�ɫ
	@RequestMapping("/roleManage")
	public String manage(Model model){
		List<RoleInfo> roleList = roleMapper.getAllRole();
		model.addAttribute("roleList", roleList);
		return "role/role_manage";
	}
	
	//��ɫȨ�޷��䣬��ѯ���в˵�������roleID��ѯ��Ӧ�Ĳ˵�
	@RequestMapping("/goToRoleEdit")
	public String goToRoleEdit(@ModelAttribute("roleId")int roleId,Model model){
		//��ѯ���в˵�
		List<MenuInfo> menuList = menuMapper.getAllMenuList(0);
		for(MenuInfo m:menuList){
			if(m.getParentId()==0){
				m.setSubMenuList(menuMapper.getAllMenuList(m.getId()));
			}
		}
		model.addAttribute("menuList", menuList);
		
		
		//����roleID��ѯ��Ӧ�Ĳ˵�,ƴ���ַ���
		List<RoleMenu> roleMenuList = roleMapper.getRoleMenuId(roleId);
		String menuIdStr = "";
		for(int i = 0 ; i<roleMenuList.size() ; i++ ){
			if(i != roleMenuList.size() - 1){
				menuIdStr += roleMenuList.get(i).getMenuId()+",";
			}else{
				menuIdStr += roleMenuList.get(i).getMenuId();
			}
		}
		System.out.println("��ɫid��"+roleId);
		System.out.println("��ɫ��Ӧ�˵�id�ǣ�"+menuIdStr);
		
		model.addAttribute("menuIdStr", menuIdStr);
		
		return "role/role_edit";
	}
	
	//�޸Ľ�ɫ��Ӧ�Ĳ˵�
	@RequestMapping("/roleMenuUpdate")
	public String roleMenuUpdate(int roleId,Model model,HttpServletRequest request){
		
		//��ɾ��
		roleMapper.delRoleMenu(roleId); 
		
		//����������
		String[]  menuIdList  = request.getParameterValues("ids");
		for(String menuId:menuIdList){
			System.out.println("���µĲ˵�id"+menuId);
			Map<Object,Object> map = new HashMap<Object, Object>();
			map.put("roleId", roleId);
			map.put("menuId", menuId);
			roleMapper.addRoleMenu(map);
		}
		
		//��ѯ���в˵�
		List<MenuInfo> menuList = menuMapper.getAllMenuList(0);
		for(MenuInfo m:menuList){
			if(m.getParentId()==0){
				m.setSubMenuList(menuMapper.getAllMenuList(m.getId()));
			}
		}
		model.addAttribute("menuList", menuList);
		
		//������²�ѯ��ɫ��Ӧ��id,ƴ���ַ���
		List<RoleMenu> roleMenuList = roleMapper.getRoleMenuId(roleId);
		String menuIdStr = "";
		for(int i = 0 ; i<roleMenuList.size() ; i++ ){
			if(i != roleMenuList.size() - 1){
				menuIdStr += roleMenuList.get(i).getMenuId()+",";
			}else{
				menuIdStr += roleMenuList.get(i).getMenuId();
			}
		}
		System.out.println("��ɫid��"+roleId);
		System.out.println("��ɫ��Ӧ�˵�id�ǣ�"+menuIdStr);
		
		model.addAttribute("menuIdStr", menuIdStr);
		model.addAttribute("msg", "���³ɹ�");
		return "role/role_edit";
	}
	
	
	//��ѯ�����û�(�Ա� ��������ɫ)
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
	
	//���û������ɫ
	@RequestMapping("/useRoleManage")
	public String userRoleManage(int id,Model model){
		UserInfo user = impl.getUserById(id);
		List<RoleInfo> roleList = roleMapper.getAllRole();
		
		model.addAttribute("user", user);
		model.addAttribute("roleList", roleList);
		return "role/user_role_manage";
	}
	
	//�޸��û���ɫȨ��
	@RequestMapping("/updateUserRole")
	public String updateUserRole(Model model,int userId,int roleId){
		UserInfo user = impl.getUserById(userId);
		user.setRoleId(roleId);
		impl.updateUserRole(user);  //�޸�
		
		List<RoleInfo> roleList = roleMapper.getAllRole();  //��ѯ��ɫ
		model.addAttribute("roleList", roleList);
		model.addAttribute("user", user);
		model.addAttribute("msg", "�޸ĳɹ�");
		return "role/user_role_manage";
	}
	
	
}
