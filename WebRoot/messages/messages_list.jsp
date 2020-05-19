<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="../css/css.css" />
<script type="text/javascript" src="../js1/jquery.min.js"></script>
<script type="text/javascript" src="../js1/page.js" ></script>

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
    <div id="pageAll">
		<div class="pageTop">
			<div class="page">
				<img src="../img/coin02.png" /><span><a href="#">留言</a>&nbsp;-&nbsp;<a
					href="#">留言信息统计</a>&nbsp;</span>
			</div>
		</div>
	</div>
  	 <div class="cfD">
  	  <form action="../messages/messages_page_manager" method="post" name="form1">
		<table  border="1" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<td class="tdColor">留言编号</td>
				<td class="tdColor">留言人姓名</td>
				<td class="tdColor">联系方式</td>
				<td class="tdColor">留言内容</td>
				<td class="tdColor">留言时间</td>
				<td class="tdColor">操作</td>
			</tr>
			<c:forEach var="messages" items="${messageslist}">
				<tr>
					<td>${messages.m_no }</td>
					<td>${messages.m_name }</td>
					<td>${messages.m_phone }</td>
					<td>${messages.m_message }</td>
					<td>${messages.m_time}</td>
               <td><br>
                   <!--  <button type="button" onclick="javascript:window.location.href='';"><img class="operation"
									src="../img/update.png"></button> -->
                  	  	<button type="button"
						 onclick="javascript:window.location.href='';return confirm('确定删除吗？'); "><img class="operation delban"
								src="../img/delete.png"></button>
			
                  </td>
				</tr>
			</c:forEach>
		</table>
</div>
     <div class="cfD" >
            <div align="right">        
                         共有 ${page.rowCount } 条记录，当前第 ${page.pageIndex }页，共 ${page.pageCount }  页	  
    		 <c:choose>
		   	 	<c:when test="${page.hasPre }">
		   	 		<button style="height: 20px; width:60px; font-size: 14px" class="button" onclick="subForm(1)">首页</button>
		  	 		<button style="height: 20px; width:60px; font-size: 14px" class="button" onclick="subForm(${page.pageIndex-1 })">上一页</button>	
		   	 	</c:when>
		   	 	<c:otherwise>
		   	 		首页
		   	 		上一页
		   	 	</c:otherwise>
		   	 </c:choose>
		   	 <c:choose>
		   	 	<c:when test="${page.hasNext }">
			  	    <button style="height: 20px; width: 60px; font-size: 14px" class="button" onclick="subForm(${page.pageIndex+1 })">下一页</button>
			  	    <button style="height: 20px; width: 40px; font-size: 14px" class="button" onclick="subForm(${page.pageCount})">尾页</button> 
		   	 	</c:when>
		   	 	<c:otherwise>
		   	 		下一页
		   	 		尾页
		   	 	</c:otherwise>
		   	 </c:choose>
		   	 
		   	 <button class="button" onclick="subForm()" style="height: 20px; width: 40px; font-size: 14px">转到</button>
			 <input type="text" name="pageIndex" id="pageIndex"  value="${page.pageIndex }" style="height: 20px; width: 40px;"/> 页
	       </div>    
	 </div>
    </form>	
     </div>
  </body>
</html>
