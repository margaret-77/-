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
		<h2 class="sub-header">对如下信息进行批量更改</h2>
	 <div class="cfD">
	<form action="/SSM/station/update_allstation" method="post" name="form1">
		始发站： <input  class="timeInput" type="text" name="start_sid" value="${start_sid}">
		终点站：<input  class="timeInput" type="text" name="end_sid" value="${end_sid}"> <input
			type="submit" value="提交">
	
            <table  border="1" cellspacing="0" cellpadding="0" width="100%" class="table table-striped">
			<tr>
				<td class="tdColor" >车次名称</td>
				<td class="tdColor" >始发站</td>
				<td class="tdColor">终点站</td>
				<td class="tdColor">到站时间</td>
				<td class="tdColor">经停车时间</td>
				<td class="tdColor">发车时间</td>
				<td class="tdColor">票价</td>
				<td class="tdColor">余票数量</td>
				<td class="tdColor">票务状态<td>
				
					<c:forEach var="stop" items="${stationList}" varStatus="s">
					<input 
			               type="hidden"
							name="stationList[${s.index}].sid"
							value="${stop.sid}" 
							style="width:85px; height:35px" readonly="readonly">
					<tr>
						<td class="tdColor"><input 
						    type="text"
							name="stationList[${s.index}].tname"
							value="${stop.tname }" 
							style="width:85px; height:35px" readonly="readonly"></td>
						
				
						<td class="tdColor"><input type="text"
							name="stationList[${s.index}].start_sid"
							value="${stop.start_sid }" style="width:85px; height:35px"></td>
						<td class="tdColor"><input type="text" name="stationList[${s.index}].end_sid"
							value="${stop.end_sid }" style="width: 85px; height:35px"></td>
						<td class="tdColor">
						<%-- <fmt:formatDate value="${stop.arrive_time}" pattern="yyyy-MM-dd HH:mm:ss"/>  --%> 
						<input type="text"
							name="stationList[${s.index}].arrive_time" value="${stop.arrive_time}"
							 style="width: 85px; height:35px"></td>
						<td class="tdColor"><input type="text"
							name="stationList[${s.index}].stop_time"
							value="${stop.stop_time }" style="width: 85px; height:35px"></td>
						<td class="tdColor"><input type="text"
							name="stationList[${s.index}].start_time"
							value="${stop.start_time }" style="width: 85px; height:35px"></td>
						<td class="tdColor"><input type="text" name="stationList[${s.index}].pice"
							value="${stop.pice }"></td>
						<td class="tdColor"><input type="text"
							name="stationList[${s.index}].sticket" value="${stop.sticket }" style="width: 85px; height:35px"></td>

						<%-- <td><fmt:formatDate value='${stop.start_day }' pattern='yyyy-MM-dd hh:mm:ss'/>
                    </td> --%>
						<%-- <td><fmt:formatDate value='${stop.start_day }'
								pattern='yyyy-MM-dd' /></td>
			 --%>
			      <td class="tdColor">
                  	<button type="button" class="btn btn-xs btn-success" onclick="javascript:window.location.href='servlet/BookServlet?flightNo=${f.no}';">预订</button>
                  </td>
					</tr>

				</c:forEach>
			<tr align="right">
				<td class="tdColor" colspan="16" style="height: 18px; "><button >批量修改</button>
			</tr>
		</table>
	</form>
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
</body>
</html>