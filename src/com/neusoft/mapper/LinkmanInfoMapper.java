package com.neusoft.mapper;

import java.util.List;
import java.util.Map;
import com.neusoft.beans.LinkmanInfo;
import com.neusoft.utils.PageInfo;

//������ϵ�� 
public interface LinkmanInfoMapper {

	public int add_linkman(LinkmanInfo linkman);

	public int del_linkman(int linkmanId);

	public int update_linkman(LinkmanInfo linkman);

	public LinkmanInfo get_linkman_byId(int linkmanId);//����id��ѯ����

	public List<LinkmanInfo> get_allLinkman();//��ѯȫ��

	public List<LinkmanInfo> get_Page_Linkman(PageInfo page); // ������ѯ��������ҳ������(��ҳ��ѯ1)

	public int getCount(); // ��ѯ�����ж���������(ȫ���ķ�ҳ��ѯ)

	public int delLinkman_Byid(String idStr); // ����ɾ��

	public int get_Count(Map<Object, Object> map);// ��ҳ

	public List<LinkmanInfo> get_select_Linkman(Map<Object, Object> map);// �ڷ�ҳ����������

	public List<LinkmanInfo> selectList(Map<Object, Object> map);
	
	public List<LinkmanInfo> queryLinkByUser(String note);
	
	public int queryCount(String note);
	
	public int updateLink(Map<Object, Object> map);

}
