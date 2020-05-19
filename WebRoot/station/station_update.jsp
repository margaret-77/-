<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>站点修改</title>
<link rel="stylesheet" type="text/css" href="../css/css.css" />
<script type="text/javascript" src="js1/jquery.min.js"></script>
</head>
<body>
	<div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="../img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">用户信息管理</a>&nbsp;-</span>&nbsp;添加用户
			</div>
		</div>
		<div class="page " style="height: 790px; ">
		<!-- <form action="user1/add_user" method="post" style="height: 699px; width: 943px; "> -->
			<div class="banneradd bor" style="height: 633px; width: 911px; ">
				<div class="baBody" style="height: 617px; width: 798px; ">
				<div class="bbD">
						车&nbsp;次&nbsp;编&nbsp;号&nbsp;&nbsp;：<input type="text" name="sid" value="${station.sid}" readonly="readonly"  class="input3" ><br>
					</div>
				
					<div class="bbD">
						&nbsp;&nbsp;始&nbsp;&nbsp;发&nbsp;&nbsp;站&nbsp;&nbsp;：<input type="text"name="start_sid" value="${station.start_sid }" class="input3" />
					</div>
					<div class="bbD">
						&nbsp;&nbsp;终&nbsp;&nbsp;点&nbsp;&nbsp;站&nbsp;&nbsp;：<input type="text" name="end_sid" value="${station.end_sid}" class="input3" />
					</div>
					<%-- <div class="bbD">
						到站时间:<input type="text" name="password" value="${user.password }">
					</div>
					<div class="bbD">
						经停车时间：<input type="text" name="idcard" value="${user.idcard }"><br>
					</div>
					<div class="bbD">
						 发车&nbsp;时间：<input type="text" name="status" value="${user.status }" ><br>
					</div>
					<div class="bbD">
					 票价：<input type="text" name="tel" value="${user.tel }"><br>
   			
					</div>
					<div class="bbD">
				
   			                   余票数量：<input type="text" name="email" value="${user.email}"><br>
					</div>
					 --%>
					<div class="bbD">
						<p class="bbDP">
							<a class="btn_ok btn_yes" href="/SSM/station/update_station">提交</a> <a
								class="btn_ok btn_no" href="#">取消</a>
									${msg }
						</p>
					<!-- 	</form> -->
					</div>
				</div>
			</div>
		</div>

</body>
</html>
  



<%-- <body>
	 <form action="station/update_station" method="post">
   			<h3>车站信息修改：</h3>
   			编&nbsp;号：<input type="text" name="sid" value="${station.sid}"><br>
   			
   			始发站：<input type="text" name="start_sid" value="${station.start_sid }"><br>
   			
	      	终点&nbsp;站：<input type="text" name="end_sid" value="${station.end_sid}">
	      	
	      	
   			到站时间:<input type="text" name="password" value="${user.password }"><br>
   		         经停车时间：<input type="text" name="idcard" value="${user.idcard }"><br>
   		         发车&nbsp;时间：<input type="text" name="status" value="${user.status }" ><br>
   		         票价：<input type="text" name="tel" value="${user.tel }"><br>
   			余票数量：<input type="text" name="email" value="${user.email}"><br>
   		   
   			<input type="submit" value="提交">
   		</form>
   		${msg } 
  </body>
		

</html> --%>