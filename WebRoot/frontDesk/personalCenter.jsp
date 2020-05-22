<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta charset="utf-8" />
<title>高铁车票预订系统</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/main.css" />
<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/css.css" />
<script type="text/javascript" src="../js1/jquery.min.js"></script>

  </head> 
  <body>
  
    <nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.jsp"><img
					src="<%=path %>/frontDesk/static/images/logo.png"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="frontDesk/index.jsp">网站首页</a></li>
					<li><a href="frontDesk/about.jsp">关于我们</a></li>
					<li><a href="frontDesk/online.jsp">在线购票</a></li>
					<li class="active"><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
					<li><a href="frontDesk/news.jsp">新闻资讯</a></li>
					<li><a href="frontDesk/contact.jsp">联系我们</a></li>
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

	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carousel-example-generic" data-slide-to="0"
				class="active"></li>
			<li data-target="#carousel-example-generic" data-slide-to="1"></li>
			<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img style="width: 1920px; height: 500px"
					src="<%=path %>/frontDesk/static/images/banner/banner1.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="<%=path %>/frontDesk/static/images/banner/banner2.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="<%=path %>/frontDesk/static/images/banner/banner3.jpg">
			</div>
			<!-- <div class="item">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner4.jpg" >
				</div> -->
		</div>

		<!-- Controls -->
		<a class="left carousel-control" href="#carousel-example-generic"
			role="button" data-slide="prev"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#carousel-example-generic"
			role="button" data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
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
		    	<li><a href="frontDesk/service1.jsp">个人资料</a></li>
				<li><a href="frontDesk/user/linkUser.jsp">常用联系人</a></li>
				<li><a href="frontDesk/user/updateUser.jsp">密码修改</a></li>
				<li><a href="queryMoney?username=${user.userName }">我的钱包</a></li>
				<li><a href="queryOrder?username=${user.userName }">我的订单</a></li>
				<li><a href="../accountUser_del?id=${user.id}"onclick="return confirm('确定注销吗？') "">注销账户</a></li>
				<li><a href="frontDesk/service5.jsp">通知设置</a></li>
				<li><a href="/SSM/login.jsp" onclick="return confirm('确定退出吗？')">退出账号</a></li>
		    	</ul>
			<div class="tit-ol">
				<p>在线购票</p>
			</div>
			<ul>
				<li><a href="frontDesk/online.jsp">立即购票</a></li>
				<li><a href="frontDesk/problem.jsp">常见问题</a></li>
			</ul>
			<div class="tit-co">
				<p>联系我们</p>
			</div>
			<ul>
				<li><a href="frontDesk/contact.jsp">在线留言</a></li>
			</ul>
		</div>
		<div class="col-sm-9">
			<section class="title">
				<h1>
					个人资料 <span>PERSONAL DATA</span>
				</h1>
			</section>

			<div class="ser-con con-pad">

				<div class="banneradd bor" style="height: 633px; width: 911px; ">

					<img src="<%=path %>/frontDesk/static/images/banner/TZ.JPG"> <span
						style=" font-size: 24px" value="">${user.userName }</span>
					上午好！<br>
					<br>
					<div align="center">
						<div style="width:850px;height: 170px;border:1px dashed blue; ">
							<p align="left"  style="font-size: 16px">欢迎您登录中国铁路客户服务中心网站。</p>
							<p align="left" style="color:red;font-size: 16px" >如果您的密码在其他网站也使用，建议您修改本网站密码。</p>
							<p align="left" style="font-size: 16px">点击<a>成为会员</a></p>
							<p align="left" style="color:red;font-size: 16px" ><i>完成手机双向核验，即可使用手机号码直接登录的新服务，解除您遗忘用户名的烦恼。</i></p>
						</div>
						<hr>
						<div style="width:850px;height: 180px;border:1px dashed green;">
							<p align="left" style="font-size: 16px">温馨提示：</p>
							<p align="left" style="font-size: 16px">1.关注“铁路12306”公众号并完成微信绑定或支付宝绑定后，购票、改签、退票、购买乘意险、退乘意险的通知消息，将会通过“铁路12306”微信公众号或支付宝通知提醒发送给您；手机号码核验、通过手机号码找回密码、列车运行调整的通知仍然通过短信发送给您。</p>
							<p align="left" style="font-size: 16px">2.您可通过“账号安全”中的“<a>通知设置</a>”修改您接收信息服务的方式。</p>
						</div>
					</div>
				</div>
			</div>
			<footer>
		<div class="container">
			<ul class="foot-nav clearfix">
				<li><a href="frontDesk/index.jsp">网站首页</a></li>
				<li><a href="frontDesk/about.jsp">关于我们</a></li>
				<li><a href="frontDesk/online.jsp">在线购票</a></li>
				<li><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
				<li><a href="frontDesk/news.jsp">新闻资讯</a></li>
				<li><a href="frontDesk/contact.jsp">联系我们</a></li>
			</ul>
		</div>
	</footer>
	<div class="fl">
		<ul>
			<li><a href="tel:15995656015">电话咨询</a></li>
			<li><a href="frontDesk/index.jsp">网站首页</a></li>
			<li><a href="">在线留言</a></li>
		</ul>
	</div>
	<script src="static/js/jquery.min.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="static/js/bootstrap.min.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
		</div>
	</div>
	
  </body>
</html>
