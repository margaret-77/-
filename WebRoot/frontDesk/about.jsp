<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
						<li class="active">
							<a href="about.jsp">关于我们</a>
						</li>
						<li>
							<a href="online.jsp">在线购票</a>
						</li>
						<li>
							<a href="personalCenter.jsp">个人中心</a>
						</li>
						<li>
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
				<!-- <div class="item">
					<img  style="width: 1920px; height: 500px" src="static/images/banner/banner4.jpg" >
				</div> -->
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
					<p>关于我们</p>
				</div>
				<ul>
					<li><a href="about.html">公司介绍</a></li>
					<li><a href="honor.html">公司荣誉</a></li>
				</ul>
				<div class="tit-ol">
					<p>在线购票</p>
				</div>
				<ul>
					<li><a href="online.jsp">立即购票</a></li>
					<li><a href="problem.html">常见问题</a></li>
				</ul>
				<div class="tit-co">
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="contact.jsp">在线留言</a></li>
				</ul>
			</div>
			<div class="col-sm-9 introduce">
				<section class="title">
					<h1>
						公司介绍
						<span>COMPANY INTRODUCTION</span>
					</h1>
				</section>
				<div class="intro-con con-pad">
					<p>高铁车票预订系统成立于1980年4月，是中国最早成立的全国性专业物流公司之一。经过多年的诚信经营，公司已与全世界142个国家、地区建立了广泛的业务合作关系，为中国的改革开放和中国电子工业的发展做出了重要贡献。</p>
					<p>公司具有国际贸易、国际工程承包、招标代理、展览广告等多种业务的甲级经营资质。截至2009年底，公司总资产达142.56亿元人民币，实现销售收入142.45亿元人民币，个人中心涉及国际贸易、海外工程、防务电子、船舶业务、招标业务、展览广告及现代物流等多个领域。</p>
					<p> 国际贸易是公司的传统主营业务。截至2009年底，累计进出口额达451.2亿美元。公司是商务部认定的A类援外物资企业，并已连续两年成为中国政府援外项目中机电产品类援外项目的第一名。</p>
					<p> 从1999年开始，在国家“走出去”战略号召下，公司正式进入海外工程承包领域，目前已拥有工程规划、设计和监理、成套设备采购、项目建设和管理的综合能力，在输变电、能源开发、市政建设、广播电视、智能建筑、体育场馆、安全监控等领域拥有丰富的项目经验和管理能力。当前，公司在手的合同额近30亿美元，已完成交工量近4亿美元。2008年，公司成为国际工程领域权威杂志《工程新闻记录》（ENR）评选的全球225家最大的国际工程承包商之一。</p>
					<p>公司的防务电子业务主要涉及防务电子装备的进出口，特别是在防务电子出口方面，公司具有国家防御系统的设计、集成和建设等能力。2009年，中国******集团有限公司（****）依托公司成立的“中国****工程研究院”，在防务电子信息系统顶层设计和集成领域发挥着积极作用。公司的船舶业务主要包括各类船舶的制造和近海航运。2005至2009年，公司已出口船舶54艘，金额逾14.8亿美元。目前，公司在建和已生效合同金额逾11.3亿美元。</p>
					<p>公司拥有财政部颁发的政府采购业务甲级招标代理资格、国家发改委颁发的中央投资项目甲级招标代理资格、商务部颁发的机电产品国际招标甲级资格和北京市财政局首批入围的政府招标代理资格。多年来，公司以专业的服务、诚信的口碑、强大的技术支持能力在业界建立了良好的信誉，已完成招标业务2000多项，招标总金额超过400亿元。</p>
				</div>
			</div>
		</div>
		
		<footer>
			<div class="container">
				<ul class="foot-nav clearfix">
					<li><a href="index.html">网站首页</a></li>
					<li><a href="about.html">关于我们</a></li>
					<li><a href="online.jsp">在线购票</a></li>
					<li><a href="personalCenter.jsp">个人中心</a></li>
					<li><a href="news.html">新闻资讯</a></li>
					<li><a href="contact.jsp">联系我们</a></li>
				</ul>
			</div>
		</footer>
		<div class="fl">
			<ul>
				<li><a href="tel:15995656015">电话咨询</a></li>
				<li><a href="index.html">网站首页</a></li>
				<li><a href="">在线留言</a></li>
			</ul>
		</div>
		<script src="static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="static/js/main.js" type="text/javascript" charset="utf-8"></script>
	</body>
  </body>
</html>
