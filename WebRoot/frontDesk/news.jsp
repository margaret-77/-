<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

	<head>
		<meta charset="utf-8" />
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
							<a href="personalCenter.jsp">个人中心</a>
						</li>
						<li class="active">
							<a href="news.jsp">新闻资讯</a>
						</li>
						<li>
							<a href="contact.jsp">联系我们</a>
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
				<div class="news-con con-pad">
					<ul>
						<li>
							<a href="news-detail1.jsp">
								<h2>铁路暑运7月1日零时启动 共开行列车369对</h2>
								<span>2019-6-28</span>
								<p>
									内容提要：　　2019年铁路暑运将于7月1日零时正式启动，至8月31日结束，共计62天。为了满足暑期客流旺季运输需求，自7月10日零时起，全国铁路将实施新的列车运行图，中国铁路西安局集团有限公司共开行列车369对。
								</p>
							</a>
						</li>
						<li>
							<a href="news-detail2.jsp">
								<h2>购买暑假学生火车票的学生们注意啦！</h2>
								<span>2019-6-28</span>
								<p>
								内容提要：　　随着毕业季、暑假、开学季陆续来临，今年铁路暑期学生返程车票从6月1号已经陆续开始发售，火车票乘车时限为6月1日至9月30日，共计4个月。
								</p>
							</a>
						</li>
						<li>
							<a href="news-detail3.jsp">
								<h2>“高铁极速达”，货物“闪现”到家</h2>
								<span>2019-6-14</span>
								<p>
								内容提要：与以往不同的是，“高铁极速达”运输产品，能实现当日寄、当日达，客户可在中铁快运或顺丰营业厅寄件，快递员收件后，会直接送到高铁站，减少了以往将货物统一拉到分拨中心再投递的中间环节，“高铁+快递”模式让急件、快件的商务信函、个人紧急物品、异地急寄等高效的运送至目的地，“高铁极速达”的推出，对于邮寄急件需求的人来说无疑是一大福利。
								</p>
							</a>
						</li>
						<li>
							<a href="news-detail4.jsp">
								<h2>6月起起铁路降低这些费用 让利9.4亿元，</h2>
								<span>2019-6-14</span>
								<p>
									内容提要：铁路货物物流，装车快、数量大、货物运输大，一次性可以解决成千上万吨的货物，为货主、企业等地方提供了极其便捷的输送条件。这些条件，其它输送方式是远远办不到的。铁路运输可以极快的大规模的解决全国各地的货物输送需求，各种混装货物，散装货物，“点对点”班列，甚至于，中欧、中亚的国际班列物流也能非常畅通的高效不间断的运行着。在“一带一路”的带领下，许多我国生产的电子产品、服装鞋帽、生活家居等三十大类，上百种轻工业生产品抵达阿拉山口，并由此走出国门，穿过哈萨克斯坦、俄罗斯，最终抵达白俄罗斯首都明斯克。
								</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		
		<footer>
			<div class="container">
				<ul class="foot-nav clearfix">
					<li><a href="index.jsp">网站首页</a></li>
					<li><a href="about.jsp">关于我们</a></li>
					<li><a href="online.jsp">在线购票</a></li>
					<li><a href="service.jsp">个人中心</a></li>
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
