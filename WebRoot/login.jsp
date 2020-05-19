<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<meta http-equiv="Content-Type" content="text/html" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录前台</title>
<link href="css/css/bootstrap.css" rel="stylesheet">
<link href="css/css/signin.css" rel="stylesheet">
<script src="js1/js/ie-emulation-modes-warning.js"></script>
<link rel="stylesheet" type="text/css" href="css/public.css" />
<link rel="stylesheet" type="text/css" href="css/page.css" />
<link rel="stylesheet" type="text/css" href="css/styles.css" />
<script type="text/javascript" src="js1/form.js"></script>
<script type="text/javascript" src="js1/jquery.min.js"></script>
<script type="text/javascript" src="js1/public.js"></script>

<script type="text/javascript">
	function refresh() {
		var co = document.getElementById("code");
		co.src = "vcode.jsp?vcode=" + Math.random();
	}
	
	function register(){
		var myreg = /^(((13[0-9]{1})|159|153)+\d{8})$/;
		if(document.form1.userName.value==""){
			alert("用户名不能为空！");
			document.form1.userName.focus();
			return false;
		}else if(document.form1.password.value==""){
			alert("密码不能为空！");
			document.form1.password.focus();
			return false;
		}else if(document.form1.name.value==""){
			alert("姓名不能为空！");
			document.form1.name.focus();
			return false;
		}else if(document.form1.cardid.value==""){
			alert("身份证号码不能为空！");
			document.form1.cardid.focus();
			return false;
		}else if(!/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|[xX])$/.test(document.form1.cardid.value)){
			alert("请输入正确的身份证号码！");
			document.form1.cardid.focus();
			return false;
		}else if(document.form1.phone.value==""){
			alert("手机号码不能为空！");
			document.form1.phone.focus();
			return false;
		}else if(!myreg.test(document.form1.phone.value)){
	           alert("请输入有效的手机号码！");
	         document.form1.phone.focus();
	          return false;
	      }
		document.form1.submit();
	}
</script>
</head>

<body>
	<div class="form" style="position:relative">
		<div class="form_register" style="height:0">
			
			<form method="post" action="servlet/AddUserServlet" id="form1" name="form1">
				<div class="logDiv">
			<!-- <img class="logBanner" src="html/img/30.jpg" /> -->
					<div class="logGet">
				<!-- 头部提示信息 -->
						<div class="logD logDtip" style="height:66px; ">
							<p class="p1">注册</p>
						</div>
					<div class="lgD" align="center" style="height: 559px; width: 313px">
					
					<div class="lgD">
						<label style="margin-left: -40px;padding-top: 4px"><a style="color: red">*&nbsp;</a>用户名:</label>
						<input type="text" name="userName" style="margin-left: -20px;width:85%">
					</div>
					<div class="lgD">
						<label style="margin-left: -40px;padding-top: 4px"><a style="color: red">*&nbsp;</a>密码:</label>
						 <input type="password" name="password" style="margin-left: -20px;width:85%">
					</div>
					<div class="lgD">
						<label style="margin-left: -40px;padding-top: 4px"><a style="color: red">*&nbsp;</a>姓名:</label>
						 <input type="text" name="name" style="margin-left: -20px;width:85%;background-color: #faffbd">
					</div>
					<div class="lgD">
						<label style="margin-left: -40px;padding-top: 4px"><a style="color: red">*&nbsp;</a>身份证:</label>
						 <input type="text" name="cardid" style="margin-left: -20px;width:85%;background-color: #faffbd">
					</div>
					<div class="lgD">
						<label style="margin-left: -40px;padding-top: 4px"><a style="color: red">*&nbsp;</a>手机号:</label>
						 <input type="text" name="phone" style="margin-left: -20px;width:85%;background-color: #faffbd">
					</div>
					<div align="center">
					<label style="margin-left: -15px;padding-top: 4px"><a style="color: red">*&nbsp;</a>旅客类型:</label>
						<select class="img2" id="sel" name="select" style="width:50%; height: 36px">
							<option value="1">成人</option>
							<option value="2">儿童</option>
							<option value="3">学生</option>
						</select>
					</div>
					<div class="logC" style="margin-top: 0px">
						<input type="button" class="btn btn-lg btn-primary btn-block" onclick="register()" value="立即注册"/>${loginMsg }
					</div>
					<div class="info">没有账号？点击<span class="switch register_Btn" id="register">登录</span></div>
					</div>
				<!-- 输入框 -->
				</div>
				</div>
				</form>
			</div>
		<div class="form_login" style="position:absolute">
			
			<form action="login" method="post" id="form1">
				<div class="logDiv">
					<div class="logGet">
				<!-- 头部提示信息 -->
						<div class="logD logDtip" style="height:66px; ">
							<p class="p1">登录</p>
						</div>
					<div class="lgD" align="center" style="height: 559px; width: 313px">
					<div align="center">
						<span>请选择用户身份</span> <select class="img2" id="sel" name="select"
							style="width:86%; height: 42px">
							<option value="1">超级管理员</option>
							<option value="2">售票员</option>
							<option value="3">普通用户</option>
						</select><br>
						<br>
					</div>
					<div class="lgD">
						<img class="img1" src="img/logName.png"> <input type="text"
							name="userName">
					</div>
					<div class="lgD">
						<img class="img1" src="img/logPwd.png"> <input
							type="password" name="password">
					</div>
					<div class="logC">
						<button class="btn btn-lg btn-primary btn-block">登录</button>${loginMsg }
					</div>
					<div class="info">没有账号？点击<span class="switch register_Btn" id="register">注册账号</span></div>
					</div>
				<!-- 输入框 -->
				</div>
				</div>
				</form>
			</div>
		</div>
			
			
			
	


</body>
</html>
