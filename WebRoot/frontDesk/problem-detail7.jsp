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
					<h5>1. 在该网站购票要支付票款吗？</h5>
					<p>在该网站成功申请席位后，请在网站提示的支付时间内，在线支付票款；逾期席位不保留，将释放给其他旅客使用。</p>
					<h5>2. 可以在该网站预订车票，到铁路售票窗口支付吗？</h5>
					<p>在该网站或手机客户端成功申请席位后，请在网站提示的支付时间内在线支付票款。目前不支持铁路售票窗口支付。</p>
					<h5>3. 在该网站订票成功后，在多长时间内支付可以保留席位？</h5>
					<p>
						购票人在该网站或手机客户端成功申请席位后，请在网站提示的支付时间内在线支付票款，逾期席位不保留，将释放给其他旅客使用。</p>
					<h5>4. 在该购票时，怎么付款？</h5>
					<p>目前，该网站支持以下在线支付工具支付票款：
					<p>（1）开通工商银行、农业银行、中国银行、招商银行、建设银行和邮储银行网银账户的用户，可以直接使用银行网银。</p>
					<p>（2）开通其他银行网银账户的用户，可以使用银联网银。</p>
					<p>（3）未开通网银账户的用户，可以使用银联快捷支付。</p>
					<p>（4）用户可以使用支付宝、微信支付。 同一订单请使用一个在线支付工具一次性支付。</p>
					<h5>5.我怎样才能知道自己的银行卡能不能支付我的票款？</h5>
					<p>（1）请联系你的发卡银行，确保您的银行卡已开通网上银行功能。，</p>
					<p>（2）请确认您已经安装发卡银行支付控件，部分银行卡还需U盾。</p>
					<p>（3）请确认您的银行卡支付限额大于票款金额。</p>
					<h5>6. 在线支付安全吗？</h5>
					<p>合理正确的进行在线支付可以有效地规避风险： 请仔细阅读银行的网上银行相关条款并遵照提示进行相关操作。
						避免在网吧等公共上网设施上使用网上银行。 使用U-Key等工具进行在线支付。 不要向第三方泄露卡号，密码等信息。
						请您认准铁路互联网售票官方网址（中国铁路客户服务中心网站：该）。</p>
					<h5>7. 在线支付需要提前做哪些准备？</h5>
					<p>请仔细发卡阅读银行的网上银行相关条款并遵照提示进行相关操作。 请通过发卡银行开通网上银行功能。
						请确保网上支付额度授权可支持交易需要。</p>
					<h5>8. 如何开通网上银行？</h5>
					<p>请联系您的发卡银行咨询相关事宜。</p>
					<h5>9. 我在该网站购票时，扣款成功但购票不成功怎么办？</h5>
					<p>
						这可能是由于支付时间过长导致的。遇到这一问题后，首先，请不要多次重复购票，以避免多次扣款；其次，请点击附件，下载表格，正确填写相关内容后，将表格以附件方式发送邮件至kyfw@该，我们将尽快核实后，按购票时所使用的在线支付工具相关规定，所扣款项将在规定时间内退回原购票时所使用的在线支付工具。
						附件：互联网扣款成功、购票不成功信息表</p>
					<h5>10. 订票后没有接收到通知怎么办？</h5>
					<p>请使用该网站订单查询功能及时确认订单状态，购票、改签、变更到站和退票的交易结果以订单查询结果为准。</p>
				</div>
				<nav>
					<ul class="pager">
						<li class="previous"><a href="problem-detail6.jsp">上一篇：丢失车票</a>
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
