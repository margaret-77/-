<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'stop_list1.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/css.css" />
<script type="text/javascript" src="js1/jquery.min.js"></script>
<script type="text/javascript" src="js1/page.js" ></script>
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
				<img src="/SSM/img/coin02.png" /><span><a href="#"></a>&nbsp;站点信息-&nbsp;<a
					href="#">站点信息统计</a>&nbsp;</span>
			</div>
		</div>
	</div>
	 <div class="cfD">
	  <form action="station/station_page_manager" method="post" name="form1">
                      始发站： <input type="text" class="timeInput"  name="start_sid"  placeholder="输入站点名" value="${start_sid}">
		终点站：<input type="text"  class="timeInput" name="end_sid" placeholder="输入站点名" value="${end_sid}">
		<!-- 日期范围：
		<input  class="timeInput" type="date" onfocus="WdatePicker({ maxDate:'#F{$dp.$D(\'datemax\')||\'%y-%M-%d\'}' })" id="datemin">
		-
		<input   class="timeInput" type="date" onfocus="WdatePicker({ minDate:'#F{$dp.$D(\'datemin\')}',maxDate:'%y-%M-%d' })" id="datemax">	
		 -->
		<button class="button"  type="submit"  id="" name=""> </button><br><br>
		<table border="1" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<td class="tdColor">车次名称</td>
				<td class="tdColor" >始发站</td>
				<td class="tdColor">终点站</td>
				<td  class="tdColor">到站时间</td>
				<td  class="tdColor">经停车时间</td>
				<td class="tdColor">发车时间</td>
				<td class="tdColor">票价</td>
				<td class="tdColor">余票数量</td>
				<!-- <td class="tdColor">发车日期</td> -->
				<td class="tdColor">途径站点</td>
				<td class="tdColor">操作</td>

			<c:forEach var="stop" items="${stationlist}">
				<tr>
					<td>${stop.tname }</td>
					<%-- <td>${stop.sid }</td> --%>
					<td>${stop.start_sid }</td>
					<td>${stop.end_sid }</td>
					<td>${stop.arrive_time }</td>
					<td>${stop.stop_time }</td>
					<td>${stop.start_time}</td>
					<td>${stop.pice}</td>
					<td>${stop.sticket}</td>
					<%-- <td><fmt:formatDate value='${stop.start_day }' pattern='yyyy-MM-dd hh:mm:ss'/>
                    </td> --%>
					<%-- <td><fmt:formatDate value='${stop.start_day}'
							pattern='yyyy-MM-dd' /></td> --%>
					<td><a href="station/get_transfer_Station?tname=${stop.tname}">途径站点</a></td>
					 
					<td>
					<button type="button" onclick="javascript:window.location.href='station/update_station?sid=${stop.sid}';window.open"""><img class="operation"
									src="img/update.png"></button>
					 	
						
                 </td>
				</tr>
				
				
				
				
			</c:forEach>
		</table>
		<div>
		 <div class="cfD" >
		  <button class="button" type="button" onclick="javascript:window.location.href='../user/user_add.jsp';">添加新站点</button><br>
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
</body>
</html>