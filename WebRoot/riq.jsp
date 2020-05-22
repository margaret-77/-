<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'riq.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	
	
	-->
	
	
	<script language="javascript" type="text/javascript" src="resource/My97DatePicker/WdatePicker.js"></script>
	

  </head>
  
  <body>
<!-- <input id="d421" class="Wdate" type="text" onfocus="WdatePicker({startDate:'%y-%M-01 00:00:00',dateFmt:'yyyy-MM-dd HH:mm:ss',alwaysUseStartDate:true,minDate:'%y-%M-%d',firstDayOfWeek:1})">

 <input id="d421" class="Wdate" type="text" onclick="WdatePicker({skin:'whyGreen',maxDate:'%y-%M-%d'})"/>
 
 <input id="d421" class="Wdate" type="text" onfocus="WdatePicker({minDate:'%y-%M-%d'})"/>
 
 
 <input id="d423" class="Wdate" type="text" onclick="WdatePicker({minDate:'%y-%M-01',maxDate:'%y-%M-%ld'})"/> -->
 
<input id="d424" class="Wdate" type="text" onclick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-M-d',minDate:'%y-%M-%d 7:00:00',maxDate:'%y-%M-{%d+30} 11:00:00'})"/>


 
  </body>
</html>
