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
    
    <title>My JSP 'user_role_manage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	

  </head>
  
  <body>
    	<h3>用户角色分配</h3><hr>
    	<form action="role/updateUserRole" method="post">	
			 用户id：<input type="text" name="userId" value="${user.id }"> 
			 <table border=1 width=100% cellspacing="0"> 
		 		<tr>
		 			<td>用户账号:</td>
		 			<td><input type="text" value="${user.userName }"></td>
		 		</tr>
		 		<tr>
		 			<td>用户角色:</td>
		 			<td>
		 				<c:forEach var="role" items="${roleList }"  >
		 					<input type="radio" value="${role.id }" name="roleId"  <c:if test="${role.id == user.roleId  }"> checked="checked"</c:if>   >${role.roleName }<br />
		 				</c:forEach>
		 			</td>
		 		</tr>
		 		<tr>
		 			<td colspan="2"><input type="submit" value="提交" > ${msg }</td>
		 		</tr>
			 </table>
    	</form>	
  </body>
</html>
