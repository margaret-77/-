<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'transfer_list.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/css.css" />
   <script type="text/javascript" src="js1/jquery.min.js"></script>
   <script type="text/javascript" src="js1/page.js" ></script>
    <link rel="stylesheet" type="text/css" href="/SSM/qt/static/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/SSM/qt/static/css/main.css" />
  </head>
  
  <body>
  <nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
					<a class="navbar-brand" href="index.html"><img src="qt/static/images/logo.png"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="/SSM/qt/index.html">网站首页</a>
						</li>
						<li>
							<a href="/SSM/qt/about.html">关于我们</a>
						</li>
						<li  class="active">
							<a href="/SSM/qt/online.jsp">在线购票</a>
						</li>
						<li>
							<a href="/SSM/qt/service.html">个人中心</a>
						</li>
						<li>
							<a href="/SSM/qt/news.html">新闻资讯</a>
						</li>
						<li>
							<a href="/SSM/qt/contact.jsp">联系我们</a>
						</li>
						<li>
							<a href="/SSM/login.jsp">登录 </a>
						</li>
					</ul>
					
				</div>
				
			</div>
	
		</nav>
		<br>
       <td >中转站信息如下:<td>
   <div  align="center">
    <div class="cfD" style="height:617px; width:700x;">
         <form action="station/get_transfer_Station" method="post">
		<table  border="1" cellspacing="0" cellpadding="0" width="90%">
			<tr>
				<td class="tdColor1"><font color="#FFFFFF">序号</font></td>
				<td class="tdColor1"><font color="#FFFFFF">中转站点</font></td>
				<td class="tdColor1"><font color="#FFFFFF">到站时间</font></td>
				<td  class="tdColor1"><font color="#FFFFFF">经停车时间</font></td>
				<td class="tdColor1"><font color="#FFFFFF">发车时间</font></td>
				
			</tr>
			<c:forEach var="stop" items="${stationlist}">
				<tr>
					<td>${stop.sid }</td>
				    <td>${stop.end_sid }</td>
					<td>${stop.arrive_time }</td>
					<td>${stop.stop_time }</td>
					<td>${stop.start_time}</td>
				</tr>
				</c:forEach>
			</table>
			
		</form></div>	</div>	
  </body>
</html>
