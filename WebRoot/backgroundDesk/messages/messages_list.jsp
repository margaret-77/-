<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_list1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/backgroundDesk/css/css.css" />
    <script type="text/javascript" src="<%=path %>/backgroundDesk/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path %>/backgroundDesk/js/page.js"></script>
     <script type="text/javascript" src="<%=path %>/backgroundDesk/js/jquery-1.8.0.js"></script>
<script type="text/javascript">
		function subForm(pageIndex){
			if(pageIndex){
				$("#pageIndex").val(pageIndex); 
				document.form1.submit();
			}else{
				document.form1.submit();
			}
		}
	</script>

  </head>
  <body>
    <div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="<%=path %>/backgroundDesk/img/coin02.png" /><span><a href="#">留言</a>&nbsp;-&nbsp;<a
					href="#">留言信息统计</a>&nbsp;</span>
			</div>
		</div>
	</div>
  	 <div class="cfD">
  	  <form action="messages/messages_page_manager" method="post" name="form1">
		<table  border="1" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<td class="tdColor">留言编号</td>
				<td class="tdColor">留言人姓名</td>
				<td class="tdColor">联系方式</td>
				<td class="tdColor">留言内容</td>
				<td class="tdColor">留言时间</td>
				<td class="tdColor">操作</td>
			</tr>
			<c:forEach var="messages" items="${messageslist}">
				<tr>
					<td>${messages.m_no }</td>
					<td>${messages.m_name }</td>
					<td>${messages.m_phone }</td>
					<td>${messages.m_message }</td>
					<td>${messages.m_time}</td>
					<td><a href="messages/del_ht_Messages?m_no=${messages.m_no}"
								onclick="return confirm('确定删除吗？')"><img class="operation"
								src="<%=path %>/backgroundDesk/img/delete.png"></a><td>
				</tr>
			</c:forEach>
		</table>
</div>
    <div align="right" class="cfD">
    	 
    		  共有 ${page.rowCount } 条记录，当前第 <label>${page.pageIndex }</label> 页，共 ${page.pageCount }  页	
    		
    		 <c:choose>
		   	 	<c:when test="${page.hasPre }">
		   	 		<button style="height: 20px; width:60px; font-size: 14px"
									class="button" onclick="subForm(1)">首页</button>
		  	 		<button style="height: 20px; width:60px; font-size: 14px"
									class="button" onclick="subForm(${page.pageIndex-1 })">上一页</button>	
		   	 	</c:when>
		   	 	<c:otherwise>
		   	 		首页
		   	 		上一页
		   	 	</c:otherwise>
		   	 </c:choose>
		   	 <c:choose>
		   	 	<c:when test="${page.hasNext }">
			  	    <button style="height: 20px; width:60px; font-size: 14px"
									class="button" onclick="subForm(${page.pageIndex+1 })">下一页</button>
			  	    <button style="height: 20px; width:60px; font-size: 14px"
									class="button" onclick="subForm(${page.pageCount})">尾页</button> 
		   	 	</c:when>
		   	 	<c:otherwise>
		   	 		下一页
		   	 		尾页
		   	 	</c:otherwise>
		   	 </c:choose>
		   	 
		   	 <button  style="height: 20px; width:60px; font-size: 14px"
									class="button" onclick="subForm()">转到</button>
			 <input type="text" name="pageIndex" id="pageIndex"  value="${page.pageIndex }"/> 页
			 
		    	</div>
    </form>	

     </div>
  </body>
</html>
