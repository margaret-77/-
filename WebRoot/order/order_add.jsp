<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'oder_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <body>
    <form action="add_Order" method="post">
用户编号：<input type="text" name="uid" value="${order.uid }"><br>
 客编 号：<input type="text" name="passenger_id" value="${order.passenger_name}"><br>
乘客姓名：<input type="text" name="passenger_name" value="${order.passenger_id}"><br>
列车编号：<input type="text" name="tid" value="${order.tid}"><br>
车厢编号：<input type="text" name="cid" value="${order.cid}"><br>
 乘客位置：<input type="text" name="location" value="${order.location}"><br>
始发站：<input type="text" name="start_sid" value="${order.start_sid}"><br>
终点站：<input type="text" name="end_sid" value="${end_sid}"><br>
日期：<input type="text" name="date" value="${order.date}"><br>
创建订单的日期：<input type="text" name="create_at" value="${order.create_at}"><br>
订单状态：<input type="text" name="status" value="${order.status}"><br>
    									   			   			   			
   			<input type="submit" value="注册">
   		</form>
   		${msg }
   		<hr>
  </body>
</html>
