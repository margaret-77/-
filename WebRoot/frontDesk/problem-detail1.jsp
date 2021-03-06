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
					<li><a href="personalCenter.jsp">个人中心</a></li>
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
					<dl>
						<dt>
							<h5>1. 什么是实名制车票？</h5>
						</dt>

						<dd>
							<p>为了确保旅客运输安全有序，铁路运输企业依照国家有关规定实行了车票实名制管理。车票实名制的实行范围、售票及验证检票方式以车站公告为准。购买实名制车票时，请提供乘车人的有效身份证件。</p>
						</dd>
					</dl>
				</div>
				<div>
					<dl>
						<dt>
							<h5>2.实行车票实名制时，可以使用哪些身份证件？</h5>
						</dt>
						<dd>
							<p>
								铁路运输企业实行车票实名制时，请凭乘车人有效身份证件原件或复印件购买车票，并持车票及购票时所使用的乘车人本人有效身份证件原件进站、乘车，但免费乘车的儿童及持儿童票的儿童除外。
								有效身份证件包括：居民身份证、临时身份证、户口簿、旅行证、军人保障卡、军官证、武警警官证、士兵证、军队学员证、军队文职干部证、军队离退休干部证、按规定可使用的有效护照、港澳台居民居住证、港澳居民来往内地通行证、往来港澳通行证、台湾居民来往大陆通行证、大陆居民往来台湾通行证、外国人居留证（含外国人永久居留证、外国人永久居留身份证）、外国人出入境证、外交官证、领事馆证、海员证、外交部开具的外国人身份证明、地方公安机关出入境管理部门开具的护照报失证明、铁路公安部门开具的乘坐旅客列车临时身份证明等25种，1.5m以上16岁以下未成年人有效身份证件还包括学生证。
								为了提高购票、验证速度，建议中国公民使用居民身份证购票。</p>
						</dd>
					</dl>
				</div>
				<div>
					<dl>
						<dt>
							<h5>3. 如何办理乘坐旅客列车临时身份证明？</h5>
						</dt>
						<dd>
							<p>旅客购票时或购票后、乘车前因有效身份证件未携带、丢失等原因无法出示有效证件时，可以至车站铁路公安制证口办理乘坐旅客列车临时身份证明。
								办理时，要符合下列条件之一： 
								<p>（1）出具所在地公安机关的户籍证明信。 </p>
								<p>（2）学生旅客出具所在学校的证明信。 </p>
							    <p>（3）中国人民解放军、武警部队现役军人持所在部队出具的证明信。 </p> 
								<p>（4）外籍旅客持当地使领馆出具的证明信。 </p>
								<p>（5）凭其他有效证件购买车票的旅客持发证部门出具的证明信。 </p>
								<p>（6）通过其他方式能够证明本人身份的。请确认证明信内容包括旅客姓名、性别、出生年月、籍贯、有效身份证件号码等信息，并加盖证明单位公章。购票后丢失有效身份证件的，请确认证明信内容与车票票面记载的旅客身份信息一致。
								乘坐旅客列车临时身份证明仅供旅客购票、退票、中转签证、验证检票以及乘车使用，请妥善保管。
								同城车站均实行实名制时，乘坐旅客列车临时身份证明可以通用。</p>
						</dd>
					</dl>
				</div>
				<nav>
					<ul class="pager">
						<li class="next"><a href="problem-detail2.jsp">下一篇：	售票窗口购票、互联网购票换票
						</a></li>
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
