package com.neusoft.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.neusoft.beans.LinkmanInfo;
import com.neusoft.beans.User;
import com.neusoft.beans.UserInfo;
import com.neusoft.dao.IUserDao;
import com.neusoft.mapper.UserInfoMapper;
import com.neusoft.mapper.UserMapper;
import com.neusoft.service.ILinkmanInfoService;
import com.neusoft.service.IUserService;

@Controller
public class UserController {

	@Resource(name = "userDaoImpl")
	IUserDao dao;

	@Resource(name = "userInfoMapper")
	UserInfoMapper mapper;

	@Resource(name = "userMapper")
	UserMapper userMapper;

	@Autowired
	private IUserService userService;

	@Autowired
	ILinkmanInfoService linkService;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public void getUserLogin(String userName, String password,
			HttpSession session, HttpServletResponse request,
			HttpServletResponse response, Model m) throws IOException {
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("userName", userName);
		map.put("password", password);
		// ��ȡ�û���Ϣ
		UserInfo user = mapper.getuser_login(map);
		User userAll = userMapper.getUser(user.getUserId());
		// ��ȡ�û�������ϵ����Ϣ
		List<LinkmanInfo> queryLinkByUser = linkService.queryLinkByUser(userAll
				.getIdcard());

		session.setAttribute("user", user);
		session.setAttribute("userAll", userAll);
		session.setAttribute("link", queryLinkByUser);
		if (user.getU_type() == 1) { // ����Ա
			response.sendRedirect("backgroundDesk/main.jsp");

		} else if (user.getU_type() == 2) {// ��ƱԱ
			System.out.println("��ƱԱ");
			response.sendRedirect("main.jsp");
		} else {// ��ͨ�û�
			System.out.println("��ͨ�û���¼");
			response.sendRedirect("frontDesk/index.jsp");
		}

	}

	@RequestMapping("/testMapper")
	public String testMapper(Model m) {
		UserInfo user = mapper.getuser_byid(1);
		m.addAttribute("user", user);
		m.addAttribute("msg", "������ҳ��");
		return "main";
	}

	@RequestMapping("/search_all")
	public String test(Model m) {
		List<UserInfo> userList = dao.getAllUser();
		m.addAttribute("userList", userList);
		return "user_manage";
	}

	@RequestMapping(value = "/user_add")
	public String addUser(@ModelAttribute("user") UserInfo user, Model m) {
		dao.addUser(user);
		System.out.println(123);
		m.addAttribute("msg", "��ӳɹ�");
		return "user_add";
	}

	@RequestMapping(value = "/user_del")
	public String delUser(int id) {
		dao.delUser(id);
		return "forward:search_all";
	}

	@RequestMapping(value = "/user_update", method = RequestMethod.GET)
	public String searchToUpd(int id, Model m) {
		UserInfo user = dao.getUserById(id);
		m.addAttribute("user", user);
		return "user_update";
	}

	@RequestMapping(value = "/user_update", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("user") UserInfo user, Model m) {
		dao.updUser(user);
		m.addAttribute("msg", "�޸ĳɹ�");
		return "user_update";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public void update(HttpSession session, HttpServletRequest request,
			HttpServletResponse response, Model m,
			@ModelAttribute("user") User user) throws IOException {
		String resname = request.getParameter("resname");
		String pass = request.getParameter("pass");
		String respas = request.getParameter("respas");
		//String respastwo = request.getParameter("respastwo");
		String phone = request.getParameter("phone");
		String idcard = request.getParameter("idcard");
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("userName", resname);
		map.put("pass", pass);
		map.put("password", respas);
		map.put("phone", phone);
		map.put("idcard", idcard);
		int update = userService.updateUser(map);
		int updateInfoUser = userService.updateInfoUser(map);
		if (update != 0 && updateInfoUser != 0) {
			m.addAttribute("msg", "�����޸ĳɹ�");
		} else {
			m.addAttribute("msg", "�����޸�ʧ�ܣ�");
		}

	}
	//ע��
	@RequestMapping(value = "/accountUser_del")
	public String del_User(int id) {
		mapper.del_user(id);	
		return "login";
	}
	
	//��ѯʣ����
		@RequestMapping(value="/queryMoney")
		public String queryMoney(HttpSession session,HttpServletRequest request,HttpServletResponse response,Model m) throws IOException{
			String userName = request.getParameter("username");
			
			Map<Object,Object> map = new HashMap<Object, Object>();
			map.put("userName", userName);
			User user = userService.queryMoney(map);
			if(user!=null){
				m.addAttribute("money",user.getMoney());
			}else{
				m.addAttribute("msg", "�û���ѯʧ��");
				response.sendRedirect("msg.jsp");
			}
			return "frontDesk/user/money";
		}
		//��ֵ
		@RequestMapping(value="/reChargeMoney")
		public void reChargeMoney(HttpSession session,HttpServletRequest request,HttpServletResponse response,Model m) throws IOException{
			String userName = request.getParameter("username");
			String addMoney = request.getParameter("moneys");
			if(!"".equals(addMoney)){
				
				
				Map<Object,Object> map = new HashMap<Object, Object>();
				map.put("userName", userName);
				User user = userService.queryMoney(map);
				if(user!=null){
					double money = Double.parseDouble(addMoney) + user.getMoney();
					map.put("money", money);
					int addMoney2 = userService.addMoney(map);
					if(addMoney2==0){
						m.addAttribute("msg", "��ֵʧ��");
						response.sendRedirect("msg.jsp");
					}else{
						m.addAttribute("money", money);
						m.addAttribute("msg", "��ֵ�ɹ�");
						request.setAttribute("msg","��ֵ�ɹ�");
						response.sendRedirect("frontDesk/user/chargeSuccess.jsp");
					}
				}else{
					m.addAttribute("msg", "��ֵʧ��");
					response.sendRedirect("msg.jsp");
				}
			}
			
		}
		
		
		//ע��
			@RequestMapping(value="/register")
			public void register(HttpSession session,HttpServletRequest request,HttpServletResponse response,Model m) throws IOException{
				
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				String userName = request.getParameter("userName");
				String password = request.getParameter("password");
				String name = request.getParameter("name");
				String cardid = request.getParameter("cardid");
				String phone = request.getParameter("phone");
				String type = request.getParameter("select");
				String sex = "";
				
				int sexs = Integer.parseInt(cardid.substring(cardid.length()-2,cardid.length()-1));
				if(sexs%2 == 0){
					sex = "Ů";
				}else{
					sex = "��";
				}
				User user = new User();
				user.setAccountUser(userName);
				user.setPassword(password);
				user.setIdcard(cardid);
				user.setUname(name);
				user.setCardtype("0");
				user.setEmail("");
				user.setSex(sex);
				user.setTel(phone);
				user.setType(type);
				user.setUserinfo_id("1");
				user.setMoney(0);
				
				
				UserInfo userinfo = new UserInfo();
				userinfo.setUserName(userName);
				userinfo.setPassword(password);
				userinfo.setRoleId(2);
				userinfo.setU_type(3);
				userinfo.setUserId(user.getIdcard());
				userinfo.setNote("��ͨ�û�");
				
				List<User> queryUser = userService.queryUser(user);
				if(queryUser == null){
					m.addAttribute("msg", "�û������ڻ��ֻ����ѱ�ע��");
					response.sendRedirect("msg.jsp");
				}
				int register = userService.register(user, userinfo);
				if(register == 0){
					m.addAttribute("msg", "ע��ʧ��");
					response.sendRedirect("msg.jsp");
				}
				response.sendRedirect("login.jsp");
				
			}

}
