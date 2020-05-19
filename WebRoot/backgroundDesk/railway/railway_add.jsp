<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>车次添加</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/backgroundDesk/css/css.css" />
<script type="text/javascript" src="<%=path %>/backgroundDesk/js/jquery.min.js"></script>
<script type="text/javascript">
	function test(){
		document.form2.submit();
	}
</script>
</head>
<body>
  <form action="../../add_railway" name="form2" method="post"> 
	<div id="pageAll">
		<div class="pageTop">
			<div class="page ">
				<img src="<%=path %>/backgroundDesk/img/coin02.png" /><span><a href="#">首页</a>&nbsp;-&nbsp;<a
					href="#">用户信息管理</a>&nbsp;-</span>&nbsp;添加用户
			</div>
		</div>
		<div class="page">	
			<div class="banneradd bor" style="height: 633px; width: 911px; ">
				<div class="baBody" style="height: 617px; width: 798px; ">
					<div class="bbD">
						&nbsp;&nbsp;车&nbsp;&nbsp;次&nbsp;&nbsp;&nbsp;编&nbsp;&nbsp;&nbsp;号：
						<input type="text" name="tid" value="${railway.tid}" class="input3" />
					</div>
					<div class="bbD">
						&nbsp;&nbsp;车&nbsp;&nbsp;&nbsp;次&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;称：<input type="text" name="tname" value="${railway.tname}" class="input3" />
					</div>
					<div class="bbD">
					&nbsp;&nbsp;类&nbsp;&nbsp;型&nbsp;&nbsp;编&nbsp;&nbsp;号：<input type="text" name="rid" class="input3"  value="${railway.rid}">
					</div>
				
					<div class="bbD">
				
						<p class="bbDP">
							
							<input type="submit" class="btn_ok btn_yes" onclick="test()" value="提交" /> 
							<input type="button" class="btn_ok btn_yes"  value="取消" /> 
							
								${msg }
						</p>
						
					</div>
				</div>
			</div>
		</div>
</form>
</body>
</html>
 