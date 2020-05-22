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
					<h1>“高铁极速达”，货物“闪现”到家</h1>
					<p>发布时间：2019-6-14</p>
						<p>
                                                                                 广铁新推出“高铁极速达”系列产品，并首次在广州南站、深圳北站、长沙南站投入使用，能实现当日寄、当日达。客户可在中铁快运或顺丰营业厅寄件，快递员收件后，会直接送到高铁站，减少了以往将货物统一拉到分拨中心再投递的中间环节。（三湘都市报）							
						</p>
					
					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img  style="width:350px; height: 200px" src="static/images/news/gs.jpg" >&nbsp;&nbsp;&nbsp;<img  style="width:350px; height: 200px" src="static/images/news/gsky.jpg" ></p>
						<p>
							与以往不同的是，“高铁极速达”运输产品，能实现当日寄、当日达，客户可在中铁快运或顺丰营业厅寄件，快递员收件后，会直接送到高铁站，减少了以往将货物统一拉到分拨中心再投递的中间环节，“高铁+快递”模式让急件、快件的商务信函、个人紧急物品、异地急寄等高效的运送至目的地，“高铁极速达”的推出，对于邮寄急件需求的人来说无疑是一大福利。

随着铁路改革发展不断走向深入，铁路部门在服务上也不断推陈出新一系列的人性化措施，让我们真切的感受到交通强国、铁路先行的责任与担当。“高铁极速达”系列产品的推出只是铁路便民举措中的一个微不足道的缩影，创新无止境，服务无终点，

“高铁极速达”是实现铁路资源更加科学合理的优化配置，用贴心周到的服务满足百姓多元化的需求的必然产物，也是在百姓需求日趋多元化的今天，多元化的市场萌生出多元化的服务，提高货运市场的竞争力，就是适应形势发展需要，遵循市场经济规律，的具体表现。
						</p>
						<p>
						改革开放40周年，中国铁路的改变将高速铁路网的速度优势、便捷优势，融入到了老百姓生活的方方面面。在速度不断升级，科技不断进步的趋势之下，相信在未来的发展道路上，铁路部门定能够给人民群众带来更美好的服务体验。（文/弋俊杰）
						</p>
					</div>
					<nav>
						<ul class="pager">
							<li class="previous">
								<a href="news-detail2.jsp">上一篇：购买暑假学生火车票的学生们注意啦！</a>
							</li>
							<li class="next">
								<a href="news-detail4.jsp">下一篇：6月起起铁路降低这些费用 让利9.4亿元，</a>
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
