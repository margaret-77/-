<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <link rel="stylesheet" type="text/css" href="<%=path %>/backgroundDesk/css/public.css" />
<script type="text/javascript" src="<%=path %>/backgroundDesk/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/backgroundDesk/js/public.js"></script>

<script type="text/javascript">
	function tuichu(){
	   top.location.href ='/SSM/login.jsp';
		
	}
	function jump(){
	  
		if (confirm("确定退出本系统吗？")) {
			tuichu();
		}
	}
</script>
</head>

<body>
	<!-- 头部 -->
	<div class="head" style="height: 100px; ">
		<div class="headL">
			<span style="font-size: 25px;color: white;">欢迎进入高铁订票系统后台</span>
		</div>
		<div class="headR">
			<p class="p1">欢迎，管理员</p>
			<p class="p2">
				<a onclick="jump()" name="top" class="resetPWD" target="showFrame" >退出</a>
			</p>
		</div>

	</div>
	
		</div>
	</div>

</body>
</html>
