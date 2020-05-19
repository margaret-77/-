<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>会员注册-有点</title>
<link rel="stylesheet" type="text/css" href="../css/css.css" />
<script type="text/javascript" src="js1/jquery.min.js"></script>
<script type="text/javascript">
	/* function test(){
		document.form2.submit();
	} */
</script>
</head>
<body>
  <form action="${pageContext.request.contextPath}/user1/add_user" name="form2" method="post"> 
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="../img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">用户信息管理</a>&nbsp;-</span>&nbsp;添加用户
			</div>
		</div>
		<div class="page ">	
			<div class="banneradd bor" style="height: 633px; width: 911px; ">
				<div class="baBody" style="height: 617px; width: 798px; ">添加
					<div class="bbD">
						&nbsp;&nbsp;用&nbsp;&nbsp;户&nbsp;&nbsp;名&nbsp;&nbsp;：
						<input type="text" name="uname" value="${user1.uname }" class="input3" />
					</div>
					<div class="bbD">
						&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;&nbsp;：<input type="text" name="password" value="${user1.password}" class="input3" />
					</div>
					<div class="bbD">
						身&nbsp;份&nbsp;证&nbsp;号&nbsp;&nbsp;：<input type="text" name="idcard" class="input3"  value="${user1.idcard }">
					</div>
					<%-- <div class="bbD">
						&nbsp;&nbsp;状 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态&nbsp;&nbsp;：<input type="text" class="input3" name="status" value="${user1.status }" ><br>
   			
					</div> --%>
					<div class="bbD">
						联&nbsp;系&nbsp;方&nbsp;式&nbsp;&nbsp;：<input type="text" name="tel" class="input3" value="${user1.tel }"><br>
   			
					</div>
					<div class="bbD">
						电&nbsp;子&nbsp;邮&nbsp;件&nbsp;&nbsp;：<input type="text" name="email" class="input3" value="${user1.email}"><br>
   		         
					</div>
					<%-- <div class="bbD">
					
   		                                      用户上线时间：<input type="text" name="time" class="input3"  value="${user1.time }"><br>
					</div> --%>
					<div class="bbD">
				
						<p class="bbDP">
							
							<input type="submit" class="btn_ok btn_yes"  value="提交" /> 
							<a class="btn_ok btn_no" href="#">取消</a>
								${msg }
						</p>
						
					</div>
				</div>
			</div>
		</div>
</form>
</body>
</html>
  <%-- <body>
   <form action="user1/add_user" method="post">
   			<h3>用户信息：</h3>
   			用  户   &hearts;名：<input type="text" name="uname" value="${user1.uname }" ><br>
   			密 &hearts; &hearts;码：<><br>
   			身份证号：<input type="text" name="idcard" value="${user1.idcard }"><br>
   			状  &hearts; &hearts;态：<input type="text" name="status" value="${user1.status }" ><br>
   			联系方 式：<input type="text" name="tel" value="${user1.tel }"><br>
   			电子邮件：<input type="text" name="email" value="${user1.email}"><br>
   		          用户上线时间：<input type="text" name="time" value="${user1.time }"><br>
   			<input type="submit" value="提交">
   		</form>
   		
  </body>
</html>
 --%>