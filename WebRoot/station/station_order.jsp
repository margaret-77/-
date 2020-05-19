<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员注册-有点</title>
<link rel="stylesheet" type="text/css" href="/SSM/css/css.css" />
<link rel="stylesheet" type="text/css" href="/SSM/frontDesk/static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/SSM/frontDesk/static/css/main.css" />
<script type="text/javascript" src="js1/jquery.min.js"></script>

</head>

<body>
   <nav class="navbar navbar-default">
			<div class="container"
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				    </button>
					<a class="navbar-brand" href="index.html"><img src="/frontDesk/static/images/logo.png"></a>
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
	<div align="center">
		<div class="baBody" style="height:617px; width: 798px; ">
			<c:forEach var="station" items="${stationList}">
				<div class="pageTop">
					<div align="left" class="page">
						<span><a href="#">订单确认页面</a>&nbsp;-&nbsp;<a href="#">订单信息如下</a></span>
					</div>
				</div>
				<h4 align="left">列车信息如下(以下余票信息仅供参考)</h4>
				<div align="left" class="bbD">
					时间：2019-7-5(周五) <B>${station1.tname}G318</B><span
						style="font-size:10px;">次</span> &nbsp;<b>${station1.start_sid }哈尔滨</b>站
					(${stop.start_time}19:35开)<b>----</b> &nbsp;${station1.end_sid}上海<b>站</b>(${stop.start_time}5：50到)
				</div>
				<br />

				<div class="bbD" align="left">席位:${s.seat}商务座(￥${s.money }300)
					无票 ${s.seat} 一等座(￥${s.money }300) 有/无票</div>
			</c:forEach>
			<a href="/SSM/user11/user1_page_manage">添加联系人</a>
			<hr/>
				<br />

				<table align="left" border="1" cellspacing="0" cellpadding="0"
					width="100%">
					<tr>
						<td class="tdColor">序号</td>
						<td class="tdColor">票种</td>
						<td class="tdColor">席别</td>
						<td class="tdColor">姓名</td>
						<td class="tdColor">证件类型</td>
						<td class="tdColor">证件号</td>
						<td class="tdColor">手机号</td>
					</tr>
					<c:forEach var="station" items="${stationList}">
						<tr>
							<td>${station1.sid}</td>
							<td><select style="width:86px; height: 35px">
									<option value="1">成人</option>
									<option value="2">学生</option>
									<option value="3">儿童</option>
									<option value="4">残疾军人</option>
							</select></td>
							<td><select style="width:86px; height: 35px">
									<option value="1">商务座(${station1.end_sid})</option>
									<option value="2">特等座(${station1.start_sid})</option>
									<option value="3">一等座(${station1.start_sid})</option>
									<option value="4">二等座(${station1.start_sid})</option>
							</select></td>
							<td>${user1.user1name}房俊琪</td>
							<td>居民身份证</td>
							<td>${user1.idcared}23088219960424704X</td>
							<td>${user1.phone}18845729212</td>
						</tr>
					</c:forEach>
				</table>
			</hr>
			<button><a href="">提交订单(跳转到支付页面)</a></button>
		</div>
		
</body>
</html>