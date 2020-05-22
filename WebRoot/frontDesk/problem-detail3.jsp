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
				<h4>---------------------------------------------------------售票窗口退票----------------------------------------------------------</h4>
				<div>
					<h5>1. 如何办理退票？</h5>
					<p>
						旅客要求退票时，请在票面载明的开车时间前到车站办理，退还全部票价，核收退票费。特殊情况经购票地车站或票面乘车站站长同意的，可在开车后2小时内办理。团体旅客请不晚于开车前48小时。原票使用现金购票的，应退票款退还现金。原票在铁路售票窗口使用银行卡购票或者在该网站使用在线支付工具购票的，按发卡银行或在线支付工具相关规定，应退票款在规定时间退回原购票时所使用的银行卡或在线支付工具。
						旅客开始旅行后不能退票。但如因伤、病不能继续旅行时，凭列车开具的客运记录，可退还已收票价与已乘区间票价差额，核收退票费；已乘区间不足起码里程时，按起码里程计算；同行人同样办理。
						退还带有“行”字戳迹的车票时，请先办理行李变更。 开车后改签的车票不退。站台票售出不退。
						必要时，铁路运输企业可以临时调整退票办法，请咨询当地车站或关注车站公告。</p>
					<h5>2. 办理退票时，需提供什么证件？</h5>
					<p>在铁路售票窗口购票的，请到车站售票窗口办理退票：
					<p>（1）乘车人本人办理的，请提供车票和购票时所使用的本人有效身份证件原件；无法出示本人有效身份证件原件的，请到车站铁路公安制证口办理乘坐旅客列车临时身份证明后，办理退票。</p>
					<p>（2）代乘车人办理的，代办人持本人有效身份证件原件，车票和与票面身份信息一致的乘车人有效身份证件原件或复印件，办理退票手续。</p>
					在该网站购票后，在车站售票窗口退票时，请提供购票时所使用的乘车人有效身份证件原件；居民身份证无法自动识读或者使用居民身份证以外的其他有效身份证件购票的，请提供订单号码。
					</p>
					<h5>3. 退票费怎么收？</h5>
					<p>
						开车前15天（不含）以上退票的，不收取退票费；票面乘车站开车时间前48小时以上的按票价5%计，24小时以上、不足48小时的按票价10%计，不足24小时的按票价20%计。
						开车前48小时～15天期间内，改签或变更到站至距开车15天以上的其他列车，又在距开车15天前退票的，仍核收5%的退票费。
						办理车票改签或“变更到站”时，新车票票价低于原车票的，退还差额，对差额部分核收退票费并执行现行退票费标准。
						上述计算的尾数以5角为单位，尾数小于2.5角的舍去、2.5角及以上且小于7.5角的计为5角、7.5角及以上的进为1元。退票费最低按2元计收。
						改签或变更到站后的车票乘车日期在春运期间的，退票时一律按开车时间前不足24小时标准核收退票费。</p>
					<h5>4. 退票收费时，给什么报销凭证？</h5>
					<p>车站售票窗口收取退票费时，出具退票（费）报销凭证。依据国家发票管理有关规定，旅客可用来报销。</p>
				</div>
				<h4>-----------------------------------------------------------互联网退票------------------------------------------------------------</h4>
				<div>

					<h5>1. 在该网站购买的车票，如何办理退票？</h5>
					<p>在该网站购票后，请按以下方式办理退票： （1）没有换取纸质车票且不晚于开车前25分钟的，可以在该网站办理。
						（2）已经换取纸质车票或者在开车前25分钟之内的，请携带购票时所使用的乘车人有效身份证件原件到车站售票窗口办理；居民身份证无法自动识读或者使用居民身份证以外的其他有效身份证件购票的，请提供订单号码（E开头+1位字母+8位数字）。
						（3）使用居民身份证购票且持居民身份证办理进站检票后，未乘车即出站的，请经车站确认后按规定办理。
						（4）因伤、病或者承运人责任中途下车的，请凭列车长出具的客运记录和购票时所使用的乘车人有效身份证件原件在下车站按规定办理。</p>
					<h5>2. 在该网站购票后，办理退票时如何退款？</h5>
					<p>在该网站办理退票时，按购票时所使用的在线支付工具相关规定，应退票款在规定时间退回购票时所使用的在线支付工具。</p>
					<h5>3. 怎么知道收到了退票款？</h5>
					<p>请通过购票时所使用的在线支付工具进行查询。</p>
					<h5>4. 普通纸质车票是否可以在该网站办理退票？</h5>
					<p>普通纸质车票请到车站售票窗口办理退票。</p>
					<h5>5. 在该网站办理退票后怎么获取报销凭证？</h5>
					<p>
						请在该网站办理退票之日起10日内，凭购票时所使用的乘车人有效身份证件原件到车站售票窗口索取退票费报销凭证。依据国家发票管理有关规定，旅客可用来报销。</p>
					<h5>6. 在该网站办理改签或“变更到站”时，核收退票费的，怎么获取报销凭证？</h5>
					<p>
						请在该网站办理改签或“变更到站”之日起10日内，凭购票时所使用的乘车人有效身份证件原件到车站售票窗口索取退票费报销凭证。依据国家发票管理有关规定，旅客可用来报销。</p>

				</div>
			</div>
			<nav>
				<ul class="pager">
					<li class="previous"><a href="problem-detail2.jsp">上一篇：售票窗口购票、互联网购票换票</a>
					</li>
					<li class="next"><a href="problem-detail4.jsp">下一篇：售票窗口、互联网改签、变更到站
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
