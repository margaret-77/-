<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

	<head>
		<meta charset="utf-8" />
		<title>高铁车票预订系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/main.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/css/css.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/style.css" />
         <script type="text/javascript" src="<%=path %>/js1/jquery.min.js"></script>
	</head>
	<script type="text/javascript">
		function reCharge() {
			
		}
		
	</script>

	<body onload="reCharge()">
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
							<a href="<%=path %>/frontDesk/index.jsp">网站首页</a>
						</li>
						<li>
							<a href="<%=path %>/frontDesk/about.jsp">关于我们</a>
						</li>
						<li>
							<a href="<%=path %>/frontDesk/online.jsp">在线购票</a>
						</li>
						<li class="active">
							<a href="<%=path %>/frontDesk/personalCenter.jsp">个人中心</a>
						</li>
						<li>
							<a href="<%=path %>/frontDesk/news.jsp">新闻资讯</a>
						</li>
						<li>
							<a href="<%=path %>/frontDesk/contact.jsp">联系我们</a>
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
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
		
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
				<li data-target="#carousel-example-generic" data-slide-to="1"></li>
				<li data-target="#carousel-example-generic" data-slide-to="2"></li>
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
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner4.jpg" >
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
					<p>个人中心</p>
				</div>
				<ul>
				<li><a href="/SSM/frontDesk/service1.jsp">个人资料</a></li>
				<li><a href="/SSM/frontDesk/user/linkUser.jsp">常用联系人</a></li>
				<li><a href="/SSM/frontDesk/user/updateUser.jsp">密码修改</a></li>
				<li><a href="/SSM/queryMoney?username=${user.userName }">我的钱包</a></li>
				<li><a href="/SSM/queryOrder?username=${user.userName }">我的订单</a></li>
				<li><a href="../accountUser_del?id=${user.id}"onclick="return confirm('确定注销吗？') "">注销账户</a></li>
				<li><a href="frontDesk/service5.jsp">通知设置</a></li>
				<li><a href="frontDesk/service.jsp">车票定单</a></li>
				<li><a href="frontDesk/service.jsp">车票定单</a></li>
				<li><a href="frontDesk/service.jsp">车票定单</a></li>
				<li><a href="frontDesk/service.jsp">车票定单</a></li>
				</ul>
				<div class="tit-ol">
					<p>在线购票</p>
				</div>
				<ul>
					<li><a href="../online.jsp">立即购票</a></li>
					<li><a href="../problem.jsp">常见问题</a></li>
				</ul>
				<div class="tit-co">
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="../contact.jsp">在线留言</a></li>
				</ul>
			</div>
			<div class="col-sm-9">
				<section class="title">
					<h1>
						钱包;
						<span>LOGISTICS AIR</span>
					</h1>
				</section>
				<div class="banneradd bor" style="height:1100px; width: 911px; ">
					<div class="ser-con con-pad">
				
				
			<!-- <B>基本信息：</B> -->
			<br/><br/>
			
			<table border="1" cellspacing="0" cellpadding="0" width="50%">
				<tr>
					<th class="tdColor">钱包余额</td>
					<th class="tdColor" >操作</td>
				</tr>
				<tr>
					<td class="tdColor">${money}</td>
					<td class="tdColor"><button onclick="javascript:window.location.href='frontDesk/user/reCharge.jsp';">充值</button></td>
				</tr>
			</table>
			
								

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
			</div>
		</footer>
		<div class="fl">
			<ul>
				<li><a href="tel:15995656015">电话咨询</a></li>
				<li><a href="index.jsp">网站首页</a></li>
				<li><a href="">在线留言</a></li>
			</ul>
		</div>
		<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>
