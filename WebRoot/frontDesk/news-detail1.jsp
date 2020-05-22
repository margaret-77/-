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
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="static/css/main.css" />
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
					<a class="navbar-brand" href="index.jsp"><img src="static/images/logo.png"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="index.jsp">网站首页</a>
						</li>
						<li>
							<a href="about.jsp">关于我们</a>
						</li>
						<li>
							<a href="online.jsp">在线购票</a>
						</li>
						<li>
							<a href="frontDesk/personalCenter.jsp">个人中心</a>
						</li>
						<li class="active">
							<a href="news.jsp">新闻资讯</a>
						</li>
						<li>
							<a href="contact.jsp">联系我们</a>
						</li>
						<li>
							
							<a href="/SSM/login.jsp">登录</a>
						</li>
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
				<li data-target="#carousel-example-generic" data-slide-to="3"></li>
			</ol>

		<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner1.jpg" >
				</div>
				<div class="item">
					<img style="width: 1920px; height: 500px" src="static/images/banner/banner2.jpg" >
				</div>
				<div class="item">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner3.jpg" >
				</div>
				<div class="item">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner4.jpg" >
				</div>
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
					<p>新闻资讯</p>
				</div>
				<ul>
					<li><a href="news.jsp">新闻中心</a></li>
				</ul>
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
						新闻中心
						<span>NEWS CENTER</span>
					</h1>
				</section>
				<div class="news-detail con-pad">
					<h1>铁路暑运7月1日零时启动 共开行列车369对</h1>
					<p>发布时间：2019-6-28</p>
					<p><img src="static/images/news/363.jpg" style="height: 470px; width: 800px; "></p>
					<div>
						<p>
							2019年铁路暑运将于7月1日零时正式启动，至8月31日结束，共计62天。为了满足暑期客流旺季运输需求，自7月10日零时起，全国铁路将实施新的列车运行图，中国铁路西安局集团有限公司共开行列车369对。

　　

　

　　
						</p>
						<p>
						　今年暑运，西安局集团公司预计发送旅客2220万人次，日均36.3万人次，同比增长1.1%，高峰期发送旅客将达到40万人次以上。
						</p>
						<p>
						西安局集团公司共开行列车369对，其中，直通列车297对，管内列车47.5对。增开西安北至宝鸡南、兰州西、太原南、运城北、峨眉山、郑州东、上海虹桥动车组8对。调整后，西安北至峨眉山的动车组将达到2对。普速列车方面，增开西安至宝鸡、渭南、潼关、安康、韩城、榆林、神木、万源，安康至乌鲁木齐普速列车15.5对。将西安至烟台K1132/29、K1130/1次运行区段改为宝鸡至烟台，西安至杭州1152/3、1154/1次改为快速旅客列车，车次改为K608/5、K606/7次，提升列车运输效率。
						</p>
						<p>
							铁路部门提醒广大旅客，暑运增开列车的具体到发时刻，以各火车站和中国铁路12306网站公告为准。华商报记者雷婧
						</p>
						<p>
							
						</p>
					</div>
					<nav>
						<ul class="pager">
							
							<li class="next">
								<a href="news-detail2.jsp">下一篇：购买暑假学生火车票的学生们注意啦！</a>
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
		<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>

</html>
