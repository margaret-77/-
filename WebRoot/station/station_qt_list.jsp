<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'user_list1.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="<%=path%>/backgroundDesk/css/css.css" />
<link rel="stylesheet" type="text/css" href="resource/css/css.css" />
<link rel="stylesheet" type="text/css"
	href="frontDesk/static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="resource/css/main.css" />

<script type="text/javascript"
	src="resource/js/jquery.min.js"></script>
<script type="text/javascript" src="resource/js/page.js"></script>
<script type="text/javascript"
	src="resource/js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="resource/js/jquery-1.8.0.js"></script>
<script type="text/javascript">
	function subForm(pageIndex) {
		if (pageIndex) {
			$("#pageIndex").val(pageIndex);
			document.form1.submit();
		} else {
			document.form1.submit();
		}
	}
</script>
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
			<a class="navbar-brand" href="index.html"><img
				src="frontDesk/static/images/logo.png"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="frontDesk/index.jsp">网站首页</a></li>
				<li><a href="frontDesk/about.jsp">关于我们</a></li>
				<li><a href="frontDesk/online.jsp">在线购票</a></li>
				<li><a href="frontDesk/personalCenter.jsp">个人中心</a></li>
				<li><a href="frontDesk/news.jsp">新闻资讯</a></li>
				<li class="active"><a href="frontDesk/contact.jsp">联系我们</a></li>
				<li><a href="/SSM/login.jsp">登录 </a></li>
			</ul>

		</div>

	</div>

	</nav>

	<div id="carousel-example-generic" class="carousel slide"
		data-ride="carousel">


		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img style="width: 1920px; height:500px"
					src="frontDesk/static/images/banner/timg.jpg">
			</div>
		</div>

	</div>

	<div id="pageAll"></div>
	<div class="cfD">
		<form action="station/station_page_manager2" method="post"
			name="form1">
			<table border="1" cellspacing="0" cellpadding="0" width="100%"
				style="">
				<tr>
					<font color="#FFFFFF">欢迎你</font>
					<td class="tdColor1"><font color="#FFFFFF">车次名称</font></td>
					<td class="tdColor1"><font color="#FFFFFF">始发站</font></td>
					<td class="tdColor1"><font color="#FFFFFF">终点站</td>
					<td class="tdColor1"><font color="#FFFFFF">发车时间></font><br>
						<font color="#FFFFFF">到站时间</font></td>
					<td class="tdColor1"><font color="#FFFFFF">历时</font></td>
					<td class="tdColor1"><font color="#FFFFFF">商务座<br>特等座
					</font></td>
					<td class="tdColor1"><font color="#FFFFFF">一等座</font></td>
					<td class="tdColor1"><font color="#FFFFFF">二等座</font></td>
					<td class="tdColor1"><font color="#FFFFFF">无座</font></td>

					<td class="tdColor1"><font color="#FFFFFF">票价</font></td>

					<td class="tdColor1"><font color="#FFFFFF">余票数量</font></td>
					<!-- <td class="tdColor1"><font color="#FFFFFF">发车日期</font></td> -->
					<td class="tdColor1"><font color="#FFFFFF">途径站点</font></td>
					<td class="tdColor1"><font color="#FFFFFF">备注</font></td>
					<c:forEach var="stop" items="${stationList}">
						<tr>
							<td>${stop.tname }</td>
							<%-- <td>${stop.sid }</td> --%>
							<td>${stop.start_sid }</td>
							<td>${stop.end_sid }</td>
							<td>${stop.start_time}<br>${stop.arrive_time }</td>
							<td>${stop.start_time}</td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>${stop.pice}</td>
							<td>${stop.sticket}</td>
							<%-- <td><fmt:formatDate value='${stop.start_day }' pattern='yyyy-MM-dd hh:mm:ss'/>
                    </td> --%>
							<%-- <td><fmt:formatDate value='${stop.start_day }'
									pattern='yyyy-MM-dd' /></td>
							--%>
							<td><a
								href="station/get_transfer_Station?tname=${stop.tname}">途径站点</a></td>
							<td>
								<button type="button"
									onclick="javascript:window.location.href='/SSM/station/order_station?sid=${stop.sid}';">
									<img style=" width: 50px;  height: 30px;"
										src="resource/img/yd.PNG">
								</button>
							</td>
						</tr>




					</c:forEach>
			</table>
			<div>
				<div align="right" class="cfD">
					共有 ${page.rowCount } 条记录，当前第 <label>${page.pageIndex }</label> 页，共
					${page.pageCount } 页

					<c:choose>
						<c:when test="${page.hasPre }">
							<button style="height: 20px; width:60px; font-size: 14px"
								class="button" onclick="subForm(1)">首页</button>
							<button style="height: 20px; width:60px; font-size: 14px"
								class="button" onclick="subForm(${page.pageIndex-1 })">上一页</button>
						</c:when>
						<c:otherwise>
		   	 		首页
		   	 		上一页
		   	 	</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${page.hasNext }">
							<button style="height: 20px; width:60px; font-size: 14px"
								class="button" onclick="subForm(${page.pageIndex+1 })">下一页</button>
							<button style="height: 20px; width:60px; font-size: 14px"
								class="button" onclick="subForm(${page.pageCount})">尾页</button>
						</c:when>
						<c:otherwise>
		   	 		下一页
		   	 		尾页
		   	 	</c:otherwise>
					</c:choose>

					<button style="height: 20px; width:60px; font-size: 14px"
						class="button" onclick="subForm()">转到</button>
					<input type="text" name="pageIndex" id="pageIndex"
						value="${page.pageIndex }" /> 页
				</div>
		</form>
</body>
</html>