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
					<h5>1. 旅客直接使用居民身份证检票乘车途中居民身份证丢失怎么办？</h5>
					<p>
						在该网站使用居民身份证购票，且在具备条件的车站使用居民身份证通过自动检票机（闸机）直接检票乘车的，在列车上因居民身份证丢失、无法确认车票信息的，请先行补票。旅客补票后，又找到居民身份证的，列车长确认后开具客运记录交旅客，旅客持客运记录和居民身份证原件到下车站退票窗口退还后补车票，不收退票费。</p>
					<h5>2. 车票丢失了，为了报销，是否可以重新补办？</h5>
					<p>依据国家发票管理有关规定，铁路部门出具的车票等运输票据具有发票属性，旅客丢失车票，不能补办。</p>
					<h5>3. 在检票进站前丢失实名制车票，如何办理挂失补办手续？</h5>
					<p>（1）请您在车票票面发站停止售票前，到车站售票厅指定窗口办理挂失补办手续。办理时，须提供购票时使用的有效身份证件原件、购票地（取票地）车站名称、乘车日期、车次、发到站信息。</p>
					<p>（2）经车站确认您的身份、车票等信息无误后，按原车票车次、席位、票价重新购买一张新车票。新票票面信息与原车票一致，并加注“挂失补”字样。</p>
					<p>（3）上车后，请您主动向列车工作人员声明（乘坐动车组时向列车长声明，乘坐普速客车时向本车厢列车员声明）。经列车核验“挂失补车票”、购票时所使用的有效身份证件原件与乘车人一致并在到站前确认未发现原车票被他人使用后，给您开具客运记录，与“挂失补车票”一并作为退票的凭证。</p>
					<p>（4）到站后，请您主动向车站出站口工作人员声明，配合工作人员进行查验，并于24小时内办理退票手续。办理时，凭客运记录、“挂失补车票”和购票时所使用的有效身份证件原件退回“挂失补车票”票款，铁路部门不收退票费，只收取2元手续费，同时收回“挂失补车票”和客运记录。


					
					<h5>4. 在列车上丢失实名制车票，列车能够查询到购票信息，如何办理挂失补办手续？</h5>
					<p>（1）请您主动向列车工作人员声明（乘坐动车组时向列车长声明，乘坐普速客车时向本车厢列车员声明）。</p>
					<p>（2）经列车查验乘车人、购票时所使用的有效身份证件原件、购票信息一致后，列车长为您办理挂失补办手续，只收取2元手续费，票面标注“车票丢失”字样。到站前核验席位使用正常后，给您开具客运记录。</p>
					<p>（3）到站后，请您主动向车站出站口工作人员声明，配合工作人员进行查验。凭票面标注“车票丢失”字样车票、客运记录和购票时所使用的有效身份证件原件办理出站检票手续，车站收回客运记录，列车收取的2元手续费不予退还。</p>
					<h5>5. 在列车上丢失实名制车票，列车未查询到购票信息，怎么办？</h5>
					<p>（1）请您主动向列车工作人员声明（乘坐动车组时向列车长声明，乘坐普速客车时向本车厢列车员声明）。</p>
					<p>（2）如列车未查询到您的购票信息，请先办理补票。到站前核验席位使用正常后，给您开具客运记录。</p>
					<p>（3）到站后，请您主动向车站出站口工作人员声明，配合工作人员进行查验。并于24小时内，凭客运记录、后补车票和购票时所使用的有效身份证件原件，到退票窗口，经车站核实身份信息及乘车日期、车次等原票、后补购票信息，确认有购票记录及已购车票有效后，退还后补车票与原票乘车区间一致部分的票价和列车补票手续费，车站收取2元手续费，收回客运记录。</p>
					<h5>6. 在出站检票前丢失实名制车票，怎么办？</h5>
					<p>（1）请您主动向车站工作人员声明，并配合工作人员进行查验。</p>
					<p>（2）经车站核查，有购票记录，已购车票有效，乘车日期、车次相符，票证人一致，实际乘车区间未超过已购车票乘车区间，并且没有出站检票记录的，为您办理挂失补办手续，收取2元手续费，票面标注“车票丢失”字样。您可凭该车票和购票时所使用的有效身份证件原件出站。经核查不符合上述条件的，须按规定补票后出站。</p>
					<h5>7. 哪些情况不办理实名制车票挂失补办手续？</h5>
					<p>
						铁路部门建立丢失车票旅客信息库，对声称丢失车票的旅客，具有以下情形之一的，发站不予办理挂失补办手续，列车和到站按无票处理，并登记其身份信息。
					
					<p>（1）不能提供购票时所使用的有效身份证件原件的；</p>
					<p>（2）没有购票记录的；</p>
					<p>（3）所购原票已经失效、退票或有出站检票记录的；</p>
					<p>（4）证、人、购票记录不一致的；</p>
					<p>（5）乘车日期、车次不符的；</p>
					<p>（6）实际乘车区间超过所购车票乘车区间的。</p>
					</p>
				</div>
				<nav>
					<ul class="pager">
						<li class="previous"><a href="problem-detail5.jsp">上一篇：特殊旅客服务
						</a></li>
						<li class="next"><a href="problem-detail7.jsp">下一篇：在线支付</a>
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
