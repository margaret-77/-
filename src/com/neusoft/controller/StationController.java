package com.neusoft.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.neusoft.beans.StationInfo;
import com.neusoft.beans.StationInfoList;
import com.neusoft.mapper.StationInfoMapper;
import com.neusoft.service.IStationService;
import com.neusoft.service.StationServicelmp;
import com.neusoft.utils.PageInfo;
import com.neusoft.utils.PageUtil;
import com.neusoft.utils.StrUtil;
@Controller
@RequestMapping("/station")
public class StationController {
	@Resource
	private StationInfoMapper mapper;
	@Resource
	private StationServicelmp imp;
	@Autowired
	private IStationService stationService;
	//��ʱ�����ڽ��г�����
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true)); // �����true�������,��ʾ�ɴ����ֵ
	}
  
	// backgroundDesk-վ����Ϣͳ��
	@RequestMapping("/station_page_manager")
	public String get_station(@ModelAttribute("pageIndex") String pageIndex,
			@ModelAttribute("start_sid") String start_sid,
			@ModelAttribute("end_sid") String end_sid,@ModelAttribute("tname") String tname, Model m) {
		int pageSize = 12;		
		Map<Object, Object> map1 = new HashMap<Object, Object>();
		map1.put("start_sid", start_sid);
		map1.put("end_sid", end_sid);
		int rowCount = stationService.get_Count(map1);	
		int pageIndex_new = 1;
		if (!StrUtil.isNullOrEmptry(pageIndex)) {
			pageIndex_new = Integer.parseInt(pageIndex);
		}
		PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("start_sid", start_sid);
		map.put("end_sid", end_sid);
		map.put("tname", tname);
		map.put("beginRow", page.getBeginRow());
		map.put("pageSize", page.getPageSize());
		List<StationInfo> stationlist = stationService.get_select_station(map);
		m.addAttribute("page", page);
		m.addAttribute("stationlist", stationlist);
		return "backgroundDesk/station/station_list";
	}
	
    //����idɾ��
	@RequestMapping("/del_ht_station")
	public String del_station(int sid) {
		stationService.delete_station(sid);		
		return "forward:station_page_manager";
	}
	

    //���ݳ������Ʋ�ѯ��תվ��Ϣ
	@RequestMapping("/get_transfer_Station")
	public String get_transfer_Station(Model m, String tname) {
		List<StationInfo> stationlist = stationService.get_station_byname(tname);
		m.addAttribute("stationlist", stationlist);
		return "station/transfer_list";
	}

     //����idɾ��
	@RequestMapping("/del_station")
	public String delRailway(int sid) {
		mapper.delete_station(sid);
		return "forward:station_page_manager";
	}
	// ����id �޸��û�
	@RequestMapping(value = "/update_station", method = RequestMethod.GET)
	public String updateStation(int sid, Model m) {
		StationInfo station = stationService.get_station_byId(sid);
		m.addAttribute("station", station);
		return "station/station_update";

	}
	// �޸�
	@RequestMapping(value = "/update_station", method = RequestMethod.POST)
	public String update_station(@ModelAttribute("station") StationInfo station,
			Model m) {
		int result = stationService.update_station(station);
		if (result == 1) {
			m.addAttribute("msg", "�޸ĳɹ�");

		} else {
			m.addAttribute("msg", "�޸�ʧ��");
		}
		return "station/station_update";

	}
   //�������������޸�
	@RequestMapping("/update_allstation")
	public String update_Allstation( StationInfoList sl) {
		List<StationInfo> stationList= sl.getStationList();
		for (StationInfo station :stationList) {
			 mapper.update_station(station);
		}
		return "forward:station_page_manager1";
	}
	@RequestMapping("/searchAllstation")
	public String getAllUser(HttpServletRequest request,HttpServletResponse response) {
		List<StationInfo> stationList = mapper.getallstation();
		request.setAttribute("stationList", stationList);
		return "station/station_manager";
	}
	   // ��ҳ��������
		@RequestMapping("/station_page_manager1")
		public String get_pl_station(@ModelAttribute("pageIndex") String pageIndex,
				@ModelAttribute("start_sid") String start_sid,
				@ModelAttribute("end_sid") String end_sid, Model m,StationInfoList sl) {

			int pageSize = 8;
			Map<Object, Object> map1 = new HashMap<Object, Object>();
			map1.put("start_sid", start_sid);
			map1.put("end_sid", end_sid);
			int rowCount = mapper.get_Count(map1);
			int pageIndex_new = 1;
			if (!StrUtil.isNullOrEmptry(pageIndex)) {
				pageIndex_new = Integer.parseInt(pageIndex);
			}
			PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
			Map<Object, Object> map = new HashMap<Object, Object>();
			map.put("start_sid", start_sid);
			map.put("end_sid", end_sid);
			map.put("beginRow", page.getBeginRow());
			map.put("pageSize", page.getPageSize());
			List<StationInfo> stationList = mapper.get_select_allstation(map);//��ѯȫ��
			
			m.addAttribute("page", page);
			
			m.addAttribute("stationList", stationList);
			
			return "backgroundDesk/station/station_manager";
	
		}
			
		// ǰ̨ ��ѯվ����Ϣ��ҳ����
		@RequestMapping("/station_page_manager2")
		public String get_qt_station(@ModelAttribute("pageIndex") String pageIndex,
				@ModelAttribute("start_sid") String start_sid,
				@ModelAttribute("end_sid") String end_sid, Model m) {

			int pageSize = 6;
			Map<Object, Object> map1 = new HashMap<Object, Object>();
			map1.put("start_sid", start_sid);
			map1.put("end_sid", end_sid);
			int rowCount = mapper.get_Count(map1);
			int pageIndex_new = 1;
			if (!StrUtil.isNullOrEmptry(pageIndex)) {
				pageIndex_new = Integer.parseInt(pageIndex);
			}
			PageInfo page = PageUtil.getPageInfo(pageSize, rowCount, pageIndex_new);
			Map<Object, Object> map = new HashMap<Object, Object>();
			map.put("start_sid", start_sid);
			map.put("end_sid", end_sid);
			map.put("beginRow", page.getBeginRow());
			map.put("pageSize", page.getPageSize());
			List<StationInfo> stationList = mapper.get_select_station(map);
			m.addAttribute("page", page);
			m.addAttribute("stationList", stationList);
			return "station/station_qt_list";
		}
		// �鿴���� 
		@RequestMapping(value = "/order_station")
		public String look_station(@ModelAttribute("station1") StationInfo station1,
				Model m) {
			return "station/station_order";

		}

}
