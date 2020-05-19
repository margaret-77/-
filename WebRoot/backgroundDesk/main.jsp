<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <frameset title="showFrame">	
    <frameset rows="100,*" cols="*" scrolling="No" framespacing="0"
	frameborder="no" border="0"> <frame src="backgroundDesk/top.jsp"
	name="headmenu" id="mainFrame" title="mainFrame"><!-- 引用头部 -->
   <!-- 引用左边和主体部分 --> 
   <frameset rows="100*" cols="245,*" scrolling="No"
	framespacing="0" frameborder="no" border="0"> 
	<frame src="/SSM/menu/getMenutoLeft" name="leftmenu" id="mainFrame" title="mainFrame">
    <frame src="backgroundDesk/right.jsp" name="rightFrame" scrolling="yes" noresize="noresize"
	id="rightFrame" title="rightFrame">
	</frameset></frameset>
	</frameset>
  <body>
  
  </body>
</html>
