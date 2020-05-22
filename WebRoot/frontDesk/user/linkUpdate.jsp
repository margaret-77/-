<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-cn">

	<head>
		<meta charset="utf-8" />
		<title>常用联系人</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/main.css" />
		<link rel="stylesheet" type="text/css" href="resource/css/css.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/frontDesk/static/css/style.css" />
         <script type="text/javascript" src="resource/js/jquery.min.js"></script>
	</head>
	<script type="text/javascript">
		 function getQueryString() {
			var url = location.href;
			var urls = location.search; 
			var urlist = urls.split("?");
			//var uname = decodeURI(urlist[1]);
			var map = urlist[1].split("&");
			for(var i=0;map.length;i++){
				 var list = map[i].split("=");
				 if(list[0]=="uname"){
				 	window.form.uname.value = decodeURI(list[1]);
				 }else if(list[0]=="idcard"){
				 	window.form.idcard.value =decodeURI(list[1]);
				 }else if(list[0]=="phone"){
				 	window.form.phone.value = decodeURI(list[1]);
				 }else if(list[0]=="type"){
				 	window.form.select.value = decodeURI(list[1]);
				 }else if(list[0]=="state"){
				 	window.form.state.value = decodeURI(list[1]);
				 }else if(list[0]=="id"){
				 	window.form.id.value = decodeURI(list[1]);
				 }
			}
			
    	 }
    	 
    
	</script>
	<script type="text/javascript">
	
     </script>
  
  <body onload="getQueryString()"  style="height: 900px">
  	<div class="col-sm-9" >
		<section class="title">
			<h1>
				修改个人资料;
				<span>LOGISTICS AIR</span>
			</h1>
		</section>
		<div class="banneradd bor" style="height:1100px; width: 911px; ">
			<div class="ser-con con-pad">
		
		
			<B>基本信息：</B>
			<form name="form" action="../../link/update_link" method="post">
				<p><input type="text" name="uname" /></p>
		    	<p><input type="text" name="cardtype" value="中国居民身份证" readonly="readonly"/></p>
		    	<p><input type="text" name="idcard"/></p>
		    	<p><input type="text" name="phone"/></p>
		    	<p><select class="img2" id="sel" name="select"
							style="width:20.5%; height: 35px">
							<option value="1">成人</option>
							<option value="2">学生</option>
					</select></p>
		    	<p><input type="text" name="state"/></p>
		    	<input type="hidden" name="id" />
		         <p><input type="submit" value="" /> <button  onclick="window.close()";   >提交</button> </p>${msg } 
		    	
			</form>
			
	      
			</div>
		 </div>
	</div>
	
  </body>
</html>
