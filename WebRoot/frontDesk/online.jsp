<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'online.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/main.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/css/css.css" />
	<script type="text/javascript" src="resource/js/jquery.min.js"></script>
	<script type="text/javascript" src="resource/js/page.js" ></script>
	<script type="text/javascript" src="resource/js/jquery-1.8.0.js"></script>
	
	<script src="<%=path %>/frontDesk/static/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<%=path %>/frontDesk/static/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="<%=path %>/frontDesk/static/js/main.js" type="text/javascript" charset="utf-8"></script>
	
	<script type="text/javascript" src="<%=path %>/resource/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript">
	function subForm(pageIndex){
			if(pageIndex){
				$("#pageIndex").val(pageIndex); 
				document.form1.submit();
			}else{
				document.form1.submit();
			}
		}
		</script>
		
	  </head>
  
  <body>
     <form action="station/station_page_manager2" method="post" name="form1">
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
					<a class="navbar-brand" href="index.jsp"><img src="<%=path %>/frontDesk/static/images/logo.png"></a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li>
							<a href="frontDesk/index.jsp">网站首页</a>
						</li>
						<li>
							<a href="frontDesk/about.jsp">关于我们</a>
						</li>
						<li class="active">
							<a href="frontDesk/online.jsp">在线购票</a>
						</li>
						<li>
							<a href="frontDesk/personalCenter.jsp">个人中心</a>
						</li>
						<li>
							<a href="frontDesk/news.jsp">新闻资讯</a>
						</li>
						<li>
							<a href="frontDesk/contact.jsp">联系我们</a>
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
					<img  style="width: 1920px; height: 500px" src="<%=path %>/frontDesk/static/images/banner/banner1.jpg" >
				</div>
				<div class="item">
					<img style="width: 1920px; height: 500px" src="<%=path %>/frontDesk/static/images/banner/banner2.jpg" >
				</div>
				<div class="item">
					<img  style="width: 1920px; height: 500px" src="<%=path %>/frontDesk/static/images/banner/banner3.jpg" >
				</div>
				<div class="item">
					<img  style="width: 1920px; height: 500px" src="<%=path %>/frontDesk/static/images/banner/banner4.jpg" >
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
					<p>在线购票</p>
				</div>
				<ul>
					<li><a href="frontDesk/online.jsp">在线购票</a></li>
				</ul>
				<div class="tit-ol">
					<p>关于我们</p>
				</div>
				<ul>
					<li><a href="frontDesk/about.jsp">系统简介</a></li>
					<li><a href="frontDesk/problem.jsp">常见问题</a></li>
				</ul>
				<div class="tit-co">
					<p>联系我们</p>
				</div>
				<ul>
					<li><a href="frontDesk/contact.jsp">在线留言</a></li>
				</ul>
			</div>
			<div class="col-sm-9 introduce">
				<section class="title">
					<h1>
						在线购票
						<span>ORDER ONLINE</span>
					</h1>
				</section>
				<div class="onlinepg con-pad">		
      <ul class="row">
	 <div class="cfD" align="center">
               始&nbsp;&nbsp;&nbsp;&nbsp;发&nbsp;&nbsp;&nbsp;&nbsp;站：<input type="text" class="timeInput"  name="start_sid"  placeholder="输入站点名" value="${start_sid}"><br><br>
               终&nbsp;&nbsp;&nbsp;&nbsp;点&nbsp;&nbsp;&nbsp;&nbsp;站：<input type="text"  class="timeInput" name="end_sid" placeholder="输入站点名" value="${end_sid}"><br><br>
	    车&nbsp;&nbsp;次&nbsp;&nbsp;名&nbsp;&nbsp;称：<input type="text" class="timeInput"  name=""  placeholder="输入站点名" value="${start_sid}"><br><br>
               出&nbsp;&nbsp;发&nbsp;&nbsp;日&nbsp;&nbsp;期： <input id="d424" class="Wdate" type="text" onclick="WdatePicker({skin:'whyGreen',dateFmt:'yyyy-M-d',minDate:'%y-%M-%d 7:00:00',maxDate:'%y-%M-{%d+28} 11:00:00'})"/>
	  <br><br>
	  <div class="cfD" >  <button class="button" type="submit" style="font-size:16px;background-color:#2C7EED;width:280px;"><span style="color:#FFFAF0">查询车票</span></button><br><br> </div>
		<footer>
			<divclass="container">
				<ul class="foot-nav clearfix">
					<li><a href="frontDesk/index.jsp">网站首页</a></li>
					<li><a href="frontDesk/about.jsp">关于我们</a></li>
					<li><a href="frontDesk/online.jsp">在线购票</a></li>
					<li><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
					<li><a href="frontDesk/news.jsp">新闻资讯</a></li>
					<li><a href="frontDesk/contact.jsp">联系我们</a></li>
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
		</form>
	</body>
</html>
