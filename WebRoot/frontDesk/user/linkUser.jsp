<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

<head>
<meta charset="utf-8" />
<title>高铁车票预订系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" type="text/css"
	href="../static/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../static/css/main.css" />
<link rel="stylesheet" type="text/css" href="../static/css/css.css" />
<link rel="stylesheet" type="text/css" href="../static/css/style.css" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
</head>
<script type="text/javascript">
		
		function sub() {
			var myreg = /^(((13[0-9]{1})|159|153)+\d{8})$/;
			var form1 = document.form1;
			alert(form1.resname.value);
			if(form1.pass.value == ""){
				alert("请输入初始密码！");
				form1.pass.focus();
				return false;
			}else if(form1.respas.value == ""){
				alert("请输入密码！");
				form1.respas.focus();
				return false;
			}else if(form1.respastwo.value == ""){
				alert("请再次输入密码");
				form1.respastwo.focus();
				return false;
			}else if(form1.respas.value != form1.respastwo.value){
				alert("两次密码不一致，请重新输入！");
				form1.respastwo.focus();
				return false;
			}/* else if(form1.phone.value == ""||form1.phone.value != myreg){
				alert("手机号为空或格式不正确");
				form1.phone.focus();
				return false;
			}else if(form1.idcard.value == "" || form1.idcard.value != /^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/){
				alert("身份证号码为空或格式不正确");
				form1.idcard.focus();
				return false;
			} */
			document.form1.submit();
			
		}
		function addLink(id,uname,idcard,phone,type,state) {
			<%request.setCharacterEncoding("utf-8");%>
			var u = encodeURI(uname);
		    var url = "<%=path%>/frontDesk/user/linkUpdate.jsp?uname="+u+"&idcard="+encodeURI(idcard)+"&phone="+encodeURI(phone)+"&type="+encodeURI(type)+"&state="+encodeURI(state)+"&id="+encodeURI(id);
			window.open(url,"常用联系人修改","height=500, width=400,top=100,left=500, toolbar =no, menubar=no, scrollbars=no, resizable=no, location=no, status=no,encoding=utf-8");
		}
		
	</script>

<body style="height:900px;">

	<nav class="navbar navbar-default">
	<div class="container" >
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
				src="../static/images/logo.png"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="../index.jsp">网站首页</a></li>
				<li><a href="../about.jsp">关于我们</a></li>
				<li><a href="../online.jsp">在线购票</a></li>
				<li class="active"><a href="../personalCenter.jsp">个人中心</a></li>
				<li><a href="../news.jsp">新闻资讯</a></li>
				<li><a href="../contact.jsp">联系我们</a></li>
				<c:if test="${user != null }">
					<li><a>${user.userName }</a></li>
				</c:if>
				<c:if test="${user == null }">
					<li><a href="/SSM/login.jsp">登录</a></li>
				</c:if>
			</ul>

		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>

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
					src="../static/images/banner/banner1.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="../static/images/banner/banner2.jpg">
			</div>
			<div class="item">
				<img style="width: 1920px; height: 500px"
					src="../static/images/banner/banner3.jpg">
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
	<div class="sec aboutpg container" style="height: 1572px">
		<div class="pg-nav col-sm-3" >
			<div class="tit-ab">
				<p>个人中心</p>
			</div>
			<ul>
				<li><a href="../service1.jsp">个人资料</a></li>
				<li><a href="linkUser.jsp">常用联系人</a></li>
				<li><a href="updateUser.jsp">密码修改</a></li>
				<li><a href="/SSM/queryMoney?username=${user.userName }">我的钱包</a></li>
				<li><a href="/SSM/queryOrder?username=${user.userName }">我的订单</a></li>
				<li><a href="../accountUser_del?id=${user.id}"onclick="return confirm('确定注销吗？') "">注销账户</a></li>
				<li><a href="../service5.jsp">通知设置</a></li>
				<li><a href="/SSM/login.jsp" onclick="return confirm('确定退出吗？')">退出账号</a></li>
			</ul>
			<div class="tit-ol">
				<p>在线购票</p>
			</div>
			<ul>
				<li><a href="../online.jsp">立即购票</a></li>
				<li><a href="../problem.jsp">常见问题</a></li>
			</ul>
			<div class="tit-co">
				<p>联系我们</p>
			</div>
			<ul>
				<li><a href="../contact.jsp">在线留言</a></li>
			</ul>
		</div>
		<div class="col-sm-9">
			<section class="title">
			<h1>
				常用联系人资料; <span>LOGISTICS AIR</span>
			</h1>
			</section>
			<div class="banneradd bor" style="height: 938px; width: 1000px; ">
				<div class="ser-con con-pad">


					<B>基本信息：</B> <br /> <br />

					<table border="1" cellspacing="0" cellpadding="0" width="100%">
						<tr>
							<td class="tdColor">序号</td>
							<td class="tdColor">姓名</td>
							<td class="tdColor">证件类型</td>
							<td class="tdColor">身份证号码</td>
							<td class="tdColor">手机号</td>
							<td class="tdColor">旅客类型</td>
							<td class="tdColor">核验状态</td>
							<td class="tdColor">操作</td>
							<%
								int i = 0;
							%>
							<c:forEach var="link" items="${link}">
								<%
									i = i + 1;
								%>
								<tr>

									<td><%=i%></td>
									<td>${link.uname }</td>
									<td>中国居民身份证</td>
									<td>${link.idcard }</td>
									<td>${link.tel }</td>
									<td>${link.type=="1"?"成人":"学生"}</td>
									<td>${link.state=="1"?"已核验":"未核验"}</td>
									<td>
										<button type="button"
											onclick="addLink('${link.linkmanId }','${link.uname}','${link.idcard }','${link.tel }','${link.type}','${link.state=="1"?"已核验":"未核验"}')">
											<img class="operation" src="/SSM/resource/img/update.png">
										</button>

										<button type="button"
											href="station/del_station?sid=${stop.sid}"
											onclick="return confirm('确定删除吗？') ">
											<img class="operation" src="/SSM/resource/img/delete.png">
										</button>
									</td>
								</tr>

							</c:forEach>
					</table>
				</div>
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
						value="${page.pageIndex }" style="width: 103px; "/> 页
				</div>
			<br><br><br><br><br><br><br>
			<div>
					<footer>
					<div class="container">
						<ul class="foot-nav clearfix">
							<li><a href="../index.jsp">网站首页</a></li>
							<li><a href="../about.jsp">关于我们</a></li>
							<li><a href="../online.jsp">在线购票</a></li>
							<li><a href="..personalCenter.jsp">个人中心</a></li>
							<li><a href="../news.jsp">新闻资讯</a></li>
							<li><a href="../contact.jsp">联系我们</a></li>
						</ul>
					</div>
					</footer>
					
					<script src="static/js/jquery.min.js" type="text/javascript"
						charset="utf-8"></script>
					<script src="static/js/bootstrap.min.js" type="text/javascript"
						charset="utf-8"></script>
					<script src="static/js/main.js" type="text/javascript"
						charset="utf-8"></script>
				</div>
		
     </body>

</html>
