<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'role_manage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="resource/js/jquery-1.8.0.js"></script>
	
	<script type="text/javascript">
		$(function(){
			$("#ch_checkall").click(function(){
				if($("#ch_checkall").attr("checked") == "checked"){
					$("input[name=ck_id]").attr("checked",$("#ch_checkall").attr("checked"));
				}else{
					$("input[name=ck_id]").removeAttr("checked");
				}
			});
		});
	</script>
  </head>
  
  <body>
    <h3>系统的角色列表</h3><hr><th><input type="checkbox" id="ch_checkall">&nbsp;全选</th>
    <table border=1 width=100%  cellspacing="0"> 
 		<tr>
 			
 			<th>角色名称</th>
 			<th>角色描述</th>
 			<th>操作</th>
 		</tr>
 		
 		<c:forEach var="role" items="${roleList }">
 			<tr>
 				<td><input type="checkbox" name="ck_id" value="${user.id }"/> </td>
 				<td>${role.roleName }</td>
 				<td>${role.des  }</td>
 				<td><a>修改</a>|<a>删除</a>|<a href="role/goToRoleEdit?roleId=${role.id }">角色权限分配</a></td>
 			</tr>
 		</c:forEach>
	</table>
  </body>
</html>
