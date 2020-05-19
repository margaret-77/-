<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'role_add.jsp' starting page</title>
    
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
    <form action="role/addRole" method="post">
		 <table>
		 		<tr>
	 			 	<td>角色名称:</td>	
	 			 	<td> 
	 			 		<input type="text" class="txtbox" id="roleName" name="roleName" value="${role.roleName }" /> 
	 			 	</td>   
		 		</tr>
		 
		 		<tr>
		 			<td>角色描述:</td>	
		 			<td><textarea rows="4" cols="21" name="des" class="txtarea">${role.des }</textarea> </td>	
		 		</tr>
		 		<tr>
		 			<td> 
			 			<input type="submit" value="提交" /> 
			 			<input type="reset"  class="form_btn" value="重置" /> 
			 		</td>	
		 		</tr>
		</table>
     </form> 
     
     ${msg }
  </body>
</html>
