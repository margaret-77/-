<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>高铁票预定系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/main.css" />
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
					<a class="navbar-brand" href="index.jsp"><img src="<%=path %>/frontDesk/static/images/logo.png"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="frontDesk/index.jsp">网站首页</a>
						</li>
						<li>
							<a href="frontDesk/about.jsp">关于我们</a>
						</li>
						<li>
							<a href="frontDesk/online.jsp">在线购票</a>
						</li>
						<li>
							<a href="frontDesk/personalCenter.jsp">个人中心</a>
						</li>
						<li>
							<a href="frontDesk/news.jsp">新闻资讯</a>
						</li>
						<li class="active">
							<a href="frontDesk/contact.jsp">联系我们</a>
						</li>
						<c:if test="${user != null }">
							<li><a>${user.userName }</a></li>
						</c:if>
						<c:if test="${user == null }">
							<li>
								<a href="/SSM/login.jsp">登录</a>
							</li>
						</c:if>
					</ul>
					
				</div>
				
			</div>	
		</nav>
		
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>

		<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img  style="width: 1920px; height: 500px" src="<%=path %>/frontDesk/static/images/banner/banner1.jpg" >
				</div>
				<div class="item">
					<img style="width: 1920px; height: 500px" src="<%=path %>/frontDesk/static/images/banner/banner2.jpg" >
				</div>
				<div class="item">
					<img  style="width: 1920px; height: 500px" src="<%=path %>/frontDesk/static/images/banner/banner3.jpg" >
				</div>
				<!-- <div class="item">
					<img  style="width: 1920px; height: 500px" src="qt/static/images/banner/banner4.jpg" >
				</div> -->
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		
		<!--aboupg-->
		<div class="sec aboutpg container">
			<div class="pg-nav col-sm-3">
				<div class="tit-ab">
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="contact.jsp">联系我们</a></li>
					<li><a href="contact.jsp#message">在线留言</a></li>
				</ul>
				<div class="tit-ol">
					<p>在线购票</p>
				</div>
				<ul>
					<li><a href="online.jsp">立即购票</a></li>
					<li><a href="problem.html">常见问题</a></li>
				</ul>
			</div>
			<div class="col-sm-9 introduce">
				<section class="title">
					<h1>
						联系我们
						<span>CONTACT US</span>
					</h1>
				</section>
				<div class="contact con-pad">
					<div class="address">
						<p>联系电话：0454-88732116</p>
						<p>联系邮箱：margaret_77@163.com</p>
					</div>
					<%-- <div class="map">
						<iframe src="<%=path %>/frontDesk/static/map/map.html"></iframe>
						<span>地图加载中...</span>
					</div> --%>
					<div id="message" class="row">
						<p>在线留言</p>
						<form action="./messages/add_lyan" method="post">
							<div class="col-sm-6">
								<p>姓名：</p>
								<input type="text" name="m_name" value="${msg.m_name }" placeholder="用户名/姓名" />
							</div>
							
							<div class="col-sm-6">
								<p>联系电话：</p>
								<input type="text"  name="m_phone"  value="${msg.m_phone }" placeholder="电话号码" />
							</div>
							<div class="col-xs-12">
							<p>发送的消息：</p>
							<textarea placeholder="添加留言"  name="m_message" value="${msg.m_message}"></textarea><br>
							<div>
							<br>
							<input type="submit" value="立即发送" style="width: 100px; "/> <p>${msg1}</p>
							</div>
							</div>
							
							
							
							
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<footer>
			<div class="container">
				<ul class="foot-nav clearfix">
					<li><a href="index.jsp">网站首页</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="online.jsp">在线购票</a></li>
					<li><a href="personalCenter.jsp">个人中心</a></li>
					<li><a href="news.jsp">新闻资讯</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
					
					</ul>
				</ul>
			</div>
		</footer>
		<div class="fl">
			<ul>
				<li><a href="tel:18845729212">电话咨询</a></li>
				<li><a href="index.jsp">网站首页</a></li>
				<li><a href="contact.jsp">在线留言</a></li>
			</ul>
		</div>
		<script src="<%=path %>/frontDesk/static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=path %>/frontDesk/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=path %>/frontDesk/static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>