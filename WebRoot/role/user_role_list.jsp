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
    
    <title>My JSP 'user_list.jsp' starting page</title>
    
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
		function subForm(pageIndex){
			if(pageIndex){
				$("#pageIndex").val(pageIndex); 
				document.form1.submit();
			}else{
				document.form1.submit();
			}
		}
	</script>
  </head>
  
  <body>
    <h3>角色分配</h3><hr>
      	<form action="role/search_user_list" method="post" name="form1"> 
  	
  		用户名：<input type="text" name="userName" value="${userName }">
  		<input id="btnsubmit" type="submit"  value="查询" /> <br><br>
  		
    	<table border="1" width=100% cellspacing="0">
    		<tr>
    			<th>id</th>
    			<th>userName</th>
    			<th>password</th>
    			<th>note</th>
    			<th>操作</th>
    		</tr>
    		<c:forEach var="user" items="${userList }">
    			<tr>
    				<td>${user.id }</td>
    				<td>${user.userName }</td>
    				<td>${user.password }</td>
    				<td>${user.note }</td>
    				<td><a href="role/useRoleManage?id=${user.id }">角色分配</a></td>
    			</tr>
    		</c:forEach>
    	</table>
    	<br><br><br><br>
    	<div>
    		  共有 ${page.rowCount } 条记录，当前第 <label>${page.pageIndex }</label> 页，共 ${page.pageCount }  页	
    		
    		 <c:choose>
		   	 	<c:when test="${page.hasPre }">
		   	 		<button onclick="subForm(1)">首页</button>
		  	 		<button onclick="subForm(${page.pageIndex-1 })">上一页</button>	
		   	 	</c:when>
		   	 	<c:otherwise>
		   	 		首页
		   	 		上一页
		   	 	</c:otherwise>
		   	 </c:choose>
		   	 <c:choose>
		   	 	<c:when test="${page.hasNext }">
			  	    <button onclick="subForm(${page.pageIndex+1 })">下一页</button>
			  	    <button onclick="subForm(${page.pageCount})">尾页</button> 
		   	 	</c:when>
		   	 	<c:otherwise>
		   	 		下一页
		   	 		尾页
		   	 	</c:otherwise>
		   	 </c:choose>
		   	 
		   	 <button onclick="subForm()">转到</button>
			 <input type="text" name="pageIndex" id="pageIndex"  value="${page.pageIndex }"/> 页
    	</div>
    </form>	
  </body>
</html>
