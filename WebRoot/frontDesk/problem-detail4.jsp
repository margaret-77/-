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
				<img src="static/images/banner/banner1.jpg">
			</div>
			<div class="item">
				<img src="static/images/banner/banner2.jpg">
			</div>
			<div class="item">
				<img src="static/images/banner/banner3.jpg">
			</div>
		</div>
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
				<h4>-----------------------------------------------售票窗口改签、变更到站-------------------------------------------------</h4>
				<div>

					<h5>1. 什么是改签？</h5>
					<p>改签是指旅客变更乘车日期、车次、席（铺）位时需办理的签证手续。
						铁路部门提醒旅客，改签以铁路有运输能力（即可售车票）为前提，只变更乘车日期、车次、席（铺）位，不变更发站和到站（同城车站除外）。
						旅客在变更旅行计划前，请通过12306网站、12306客服电话、车票售票窗口显示屏等方式查询拟乘坐的列车是否有足够余票，避免到时因没有余票不能改签而影响行程。</p>
					<h5>2. 什么情况下可以办理改签？</h5>
					<p>旅客不能按票面指定的乘车站、日期、车次乘车时，请到车站办理一次提前或推迟乘车签证（简称改签）。
						在有运输能力的前提下，开车前48小时（不含）以上，可改签预售期内的其他列车；开车前48小时以内，可改签开车前的其他列车，也可改签开车后至票面日期当日24:00之间的其他列车，不办理票面日期次日及以后的改签；开车之后，旅客仍可改签当日其他列车，但只能在票面发站办理改签，且开车后改签的车票不能退票。已经办理“变更到站”的车票，不再办理改签。开车前48小时～15天期间内，改签至距开车15天以上的其他列车，又在距开车15天前退票的，仍核收5%的退票费。改签或变更到站后的车票乘车日期在春运期间的，退票时一律按开车时间前不足24小时标准核收退票费。</p>
					<h5>3. 实名制车票办理改签或变更到站时，是否需要身份证件？</h5>
					<p>
						目前，实名制车票改签或变更到站不需出示有效身份证件，但是，在该网站购票的旅客，在车站售票窗口改签或变更到站时，使用居民身份证购票的，请提供购票时所使用的乘车人有效居民身份证原件；居民身份证无法自动识读或者使用居民身份证以外的其他有效身份证件购票的，请出示购票时所使用的乘车人有效身份证件原件和订单号码（E+9位数字）。</p>
					<h5>4. 非实名制通票中转签证实名制车票时，是否需要身份证件？</h5>
					<p>非实名制通票中转签证实名制车票时，按实名制办理，请提供乘车人有效身份证件原件或复印件。</p>
					<h5>5. 车票是否可以办理多次改签？</h5>
					<p>
						一张车票可以办理一次改签。车票改签后，旅客取消旅行的，可以按规定退票，但开车后改签的车票不能退票。对已改签车票暂不提供“变更到站”服务。</p>
					<h5>6. 在该网站购买的车票，可以在铁路售票窗口改签吗？</h5>
					<p>在该网站购票后，在有运输能力的前提下，可在车站售票窗口办理改签：</p>
					<p>（1）开车前48小时（不含）以上，可改签预售期内的其他列车；开车前48小时以内，可改签开车前的其他列车，也可改签开车后至票面日期当日24:00之间的其他列车，不办理票面日期次日及以后的改签；开车之后，旅客仍可改签当日其他列车，但只能在票面发站办理改签。已经办理“变更到站”的车票，不再办理改签。开车前48小时～15天期间内，改签至距开车15天以上的其他列车，又在距开车15天前退票的，仍核收5%的退票费。改签或变更到站后的车票乘车日期在春运期间的，退票时一律按开车时间前不足24小时标准核收退票费。</p>
					<p>（2）按购票时所使用的在线支付工具相关规定，在铁路售票窗口改签时，改签后新车票票价高于原车票、需补收票价差额的，请使用带有银联标志的银行卡支付新车票全额票款，原车票票款在规定时间内退回购票时所使用的在线支付工具；改签后新车票票价低于原车票的，退还差额，对差额部分核收退票费并执行现行退票费标准，应退票款在规定时间内退回购票时所使用的在线支付工具。改签后的新车票票价等于原车票的，无需办理支付。</p>
					<p>（3）在车站售票窗口改签后，出具纸质车票。</p>
					<h5>7. 改签时能变更发站和到站吗？</h5>
					<p>
						改签是指旅客变更乘车日期、车次、席（铺）位时需办理的签证手续。当旅客因自身原因办理改签时，在有运输能力的前提下，只变更乘车日期、车次、席（铺）位，不变更发站和到站（同城车站除外）。</p>
					<h5>8. 办理车票改签时产生差额如何收取或退款？</h5>
					<p>
						原车票使用现金购票的，新车票票价高于原车票时，补收差额；新车票票价低于原车票时，退还差额，对差额部分核收退票费并执行现行退票费标准（均为现金）。
						原车票在铁路售票窗口使用银行卡购票，或者在该网站使用在线支付工具购票的，按发卡银行或在线支付工具相关规定，新车票票价高于原车票时，请使用银行卡支付新车票全额票款，原车票票款在规定时间退回原购票时所使用的银行卡或在线支付工具；新车票票价低于原车票时，退还差额，对差额部分核收退票费并执行现行退票费标准，应退票款在规定时间退回原购票时所使用的银行卡或在线支付工具。</p>
					<h5>9. 什么是“变更到站”？</h5>
					<p>
						自2015年6月10日起，在铁路客运部门推出“变更到站”服务，即：旅客购票后，可根据行程变化，重新选择新的目的地，在车票预售期内变更到站及乘车日期、车次、席位。</p>

				</div>
				
					<h4>-----------------------------------------------互联网改签、变更到站----------------------------------------------------</h4>
					<div><h5>1. 身份信息核验后，可以在该网站办理改签或变更到站吗？</h5>
					<p>
						不论注册用户的身份信息核验状态如何，所有注册用户均可在该网站为“已通过”、“预通过”、“请报验”常用联系人（乘车人）的网上已购车票正常办理改签或变更到站，不能为“待核验”、“未通过”常用联系人（乘车人）的网上已购车票办理改签及变更到站。</p>
					<h5>2. 在该网站购买的车票如何办理改签？</h5>
					<p>
					<p>（1）在该网站购票后，没有换取纸质车票且不晚于开车前25分钟的，可以在该网站办理改签；已经换取纸质车票或者在开车前25分钟内的，请到车站售票窗口办理。
					</p>
					<p>（2）在有运输能力的前提下，开车前48小时（不含）以上，可改签预售期内的其他列车；开车前48小时以内，可改签开车前的其他列车，也可改签开车后至票面日期当日24:00之间的其他列车，不办理票面日期次日及以后的改签；开车之后，旅客仍可改签当日其他列车，但只能在票面发站办理改签。已经办理“变更到站”的车票，不再办理改签。开车前48小时～15天期间内，改签至距开车15天以上的其他列车，又在距开车15天前退票的，仍核收5%的退票费。改签或变更到站后的车票乘车日期在春运期间的，退票时一律按开车时间前不足24小时标准核收退票费。
					</p>
					<p>（3）按购票时所使用的在线支付工具相关规定，改签时，新车票票价高于原车票的，请使用在线支付工具支付新票全额票款，原票款在规定时间退回原购票时所使用的在线支付工具；新车票票价低于原车票的，退还差额，对差额部分核收退票费并执行现行退票费标准，应退票款在规定时间退回原购票时所使用的在线支付工具；新车票票价等于原车票的，无需支付。
					</p>
					<p>（4）在车站售票窗口改签后，出具纸质车票。</p>
					<h5>3. 在该网站购买的车票如何办理“变更到站”？</h5>
					<p>
					    旅客在该网站购票后，在原车票开车前48小时以上，且没有换取纸质车票的，在有运输能力的前提下，可以在12306网站办理“变更到站”；已经取得纸质车票的，请在车站指定售票窗口办理。对已改签车票、团体票及通票暂不提供“变更到站”服务。开车前48小时～15天期间内，“变更到站”至距开车15天以上的其他列车，又在距开车15天前退票的，仍核收5%的退票费。
					    按购票时所使用的在线支付工具相关规定，“变更到站”时，新车票票价高于原车票的，请使用在线支付工具支付新票全额票款，原票款在规定时间退回原购票时所使用的在线支付工具；新车票票价低于原车票的，退还差额，对差额部分核收退票费并执行现行退票费标准，应退票款在规定时间退回原购票时所使用的在线支付工具；新车票票价等于原车票的，无需支付。
					    在车站售票窗口办理“变更到站”后，出具纸质车票。</p>
					<h5></h5>
					<p></p>
					<h5></h5>
					<p></p>
				</div>
				<nav>
					<ul class="pager">
						<li class="previous"><a href="problem-detail3.jsp">上一篇：售票窗口、互联网退票</a>
						</li>
						<li class="next"><a href="problem-detail5.jsp">下一篇：特殊旅客服务
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
