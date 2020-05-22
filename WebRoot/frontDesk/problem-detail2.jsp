<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

<head>
<meta charset="utf-8" />
<title>高铁车票预订系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="static/css/main.css" />
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
					src="static/images/logo.png"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp">网站首页</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="online.jsp">在线购票</a></li>
					<li><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
					<li class="active"><a href="news.jsp">新闻资讯</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
					<li><a href="/SSM/login.jsp">登录</a></li>
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
					src="static/images/banner/banner1.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="static/images/banner/banner2.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="static/images/banner/banner3.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="static/images/banner/banner4.jpg">
			</div>
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
			<div class="tit-ol">
				<p>在线购票</p>
			</div>
			<ul>
				<li><a href="online.jsp">立即购票</a></li>
				<li><a href="problem.jsp">常见问题</a></li>
			</ul>
			<div class="tit-co">
				<p>联系我们</p>
			</div>
			<ul>
				<li><a href="contact.jsp">在线留言</a></li>
			</ul>
		</div>
		<div class="col-sm-9">
			<section class="title">
				<h1>
					常见问题 <span>COMMON PROBLEMS</span>
				</h1>
			</section>
			<div class="news-detail con-pad">
				<div>
					<h5>1.网站提供哪些服务？</h5>
					<p>
						提供用户注册、列车时刻表查询、余票查询、票价查询、购票（含网上支付）、订单查询、改签、变更到站、退票、铁路客运信息查询等服务。</p>

					<h5>2. 是否必须注册？</h5>
					<p>
						在该网站购票前，请注册用户。注册时，请正确录入相关信息，并认真核对。注册成功后，用户可以为本人或者他人购票。</p>

					<h5>3.网站可以买哪些票？</h5>
					<p>该网站，可以购买铁路客票系统发售的成人、儿童、学生、残疾军人（含伤残人民警察）各车次、各席别的高铁、及动车直达票。</p>

					<h5>4.在该网站购票，有无时间要求？</h5>
					<p>在该网站，办理购票、改签、退票等业务时，请不晚于开车前25分钟；在开车前25分钟之内的，请到车站售票窗口办理。</p>
					<p>在该网站，办理“变更到站”业务时，请不晚于开车前48小时。
					<h5>5. 在该网站可以使用哪些身份证件？</h5>
					<p>
						在该网站注册及购票时，可使用的有效身份证件包括：居民身份证（包括中华人民共和国居民身份证、港澳台居民居住证、外国人永久居留身份证）、港澳居民来往内地通行证、台湾居民来往大陆通行证、按规定可使用的有效护照四种证件，请按该网站的提示输入相关信息。购买学生票时，请提供学校、优惠乘车区间等学生信息。</p>
					<h5>6.一张有效身份证件同一乘车日期同一车次是否可以购买多张车票？</h5>
					<p>
						一张有效身份证件同一乘车日期同一车次可以购买一张车票，但儿童没有身份证时，还可以在同一订单下再次使用同行成年人的身份信息购买儿童票。</p>
					<h5>7.该网站可以使用哪些在线支付工具？</h5>
					<p>目前，该网站支持以下在线支付工具：</p>
					<p>（1）开通工商银行、农业银行、中国银行、招商银行、建设银行和邮储银行网银账户的用户，可以直接使用银行网银支付。</p>
					<p>（2）开通其他银行网银账户的用户，可以使用银联网银支付。</p>
					<p>（3）未开通网银账户的用户，可以使用银联快捷支付。</p>
					<p>（4）用户可以使用支付宝支付。 同一订单请使用一个在线支付工具一次性支付。</p>
					<h5>8. 在线支付票款有时间要求吗？</h5>
					<p>在该网站申请到席位后，请在网站提示的支付时间内，在线支付票款，否则将取消席位。</p>
					<h5></h5>
					<p></p>

				</div>

				<div>
					<nav>
						<ul class="pager">
							<li class="previous"><a href="problem-detail1.jsp">上一篇：实名制车票</a>
							</li>
							<li class="next"><a href="problem-detail3.jsp">下一篇：互联网退票</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>

		<footer>
			<div class="container">
				<ul class="foot-nav clearfix">
					<li><a href="index.jsp">网站首页</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="online.jsp">在线购票</a></li>
					<li><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
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
		<script src="static/js/jquery.min.js" type="text/javascript"
			charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript"
			charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
</body>

</html>
