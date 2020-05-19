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
    
    <title>My JSP 'role_edit.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript" src="resource/js/jquery-1.8.0.js"></script>

  </head>
  
  <body>
    <h3>角色权限分配</h3> <hr>
    
    <div>
    	  菜单字串:  <input type="text" value="${menuIdStr }" >
     	 角色id:  <input type="text" name="roleId" value="${roleId }" >
    </div>
    <hr>
    <form action="role/roleMenuUpdate" method="post" >
		 角色id：<input type="text" value="${roleId }" name="roleId">
		 <table border=1 width=100% cellspacing="0"> 
	 		<tr>
	 			<th>一级菜单</th>
	 			<th>二级菜单</th>
	 		</tr>
	 		
	 		<c:forEach var="menu" items="${menuList }">
	 			<tr>
	 				<td><input type="checkbox" value="${menu.id }" name="ids">${menu.menuName }(菜单id：_${menu.id })</td>
	 				<td>
						<c:forEach var="sub_menu" items="${menu.subMenuList }">
							<input type="checkbox" value="${sub_menu.id }" name="ids">${sub_menu.menuName }(菜单id：_${sub_menu.id })<br>
						</c:forEach>
					</td>
	 			</tr>
	 		</c:forEach>
		</table>
		<input type="submit" value="更新" onclick="return confirm('确定提交吗')" />  ${msg }
	</form>				
    <script type="text/javascript">
    	$(function(){
    		var menuIdstr ="${menuIdStr}";
    		var menuIdList = menuIdstr.split(",");
    		
    		Array.prototype.contains=function(e){
    			for(var i = 0 ;i<this.length ;i++){
	    			if(e == this[i]){
	    				return true;
	    			}
    			}
    			return false;
    		}
    		
    		$("input[type=checkbox]").each(function(){
    			if(menuIdList.contains(this.value)){
    				this.checked = true;
    			}
    		});
    	});
    </script>
  </body>
</html>
