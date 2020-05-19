<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>My JSP 'user_list1.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="css/css.css" />
<script type="text/javascript"
	src="<%=path%>/backgroundDesk/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path%>/backgroundDesk/js/page.js"></script>
<script type="text/javascript"
	src="<%=path%>/backgroundDesk/js/jquery-1.8.0.js"></script>

<script type="text/javascript" src="resource/js/jquery-1.8.0.js"></script>
<script type="text/javascript">
	function subForm(pageIndex) {
		if (pageIndex) {
			$("#pageIndex").val(pageIndex);
			document.form1.submit();
		} else {
			document.form1.submit();
		}
	}
</script>

</head>


<body>
	<h2 class="sub-header">对如下信息进行批量更改</h2>
	<div class="cfD">
		<form action="station/update_allstation" method="post" name="form1">
			始发站： <input class="timeInput" type="text" name="start_sid"
				value="${start_sid}"> 终点站：<input class="timeInput"
				type="text" name="end_sid" value="${end_sid}"> <input
				style="height: 30px; width:60px; font-size: 14px" class="button"
				type="submit" value="搜索">

			<div>
				<br>
			</div>

			<table border="1" cellspacing="0" cellpadding="0" width="100%"
				class="table table-striped">
				<tr>
					<td class="tdColor">车次名称</td>
					<td class="tdColor">始发站</td>
					<td class="tdColor">终点站</td>
					<td class="tdColor">到站时间</td>
					<td class="tdColor">经停车时间</td>
					<td class="tdColor">发车时间</td>
					<td class="tdColor">票价</td>
					<td class="tdColor">余票数量</td>
					<!-- <td class="tdColor">票务状态<td> -->

					<c:forEach var="stop" items="${stationList}" varStatus="s">
						<input type="hidden" name="stationList[${s.index}].sid"
							value="${stop.sid}" style="width:85px; height:35px"
							readonly="readonly">
						<tr>
							<td class="tdColor"><input type="text"
								name="stationList[${s.index}].tname" value="${stop.tname }"
								style="width:85px; height:35px" readonly="readonly"></td>


							<td class="tdColor"><input type="text"
								name="stationList[${s.index}].start_sid"
								value="${stop.start_sid }" style="width:85px; height:35px"></td>
							<td class="tdColor"><input type="text"
								name="stationList[${s.index}].end_sid" value="${stop.end_sid }"
								style="width: 85px; height:35px"></td>
							<td class="tdColor">
								<%-- <fmt:formatDate value="${stop.arrive_time}" pattern="yyyy-MM-dd HH:mm:ss"/>  --%>
								<input type="text" name="stationList[${s.index}].arrive_time"
								value="${stop.arrive_time}" style="width: 85px; height:35px">
							</td>
							<td class="tdColor"><input type="text"
								name="stationList[${s.index}].stop_time"
								value="${stop.stop_time }" style="width: 85px; height:35px"></td>
							<td class="tdColor"><input type="text"
								name="stationList[${s.index}].start_time"
								value="${stop.start_time }" style="width: 85px; height:35px"></td>
							<td class="tdColor"><input type="text"
								name="stationList[${s.index}].pice" value="${stop.pice }"></td>
							<td class="tdColor"><input type="text"
								name="stationList[${s.index}].sticket" value="${stop.sticket }"
								style="width: 85px; height:35px"></td>

						</tr>

					</c:forEach>
			</table>
			<div>
				<br>
			</div>
			<input style="height: 30px; width: 91px; font-size: 14px"
				class="button" type="submit" value="批量修改">
	</div>

	</div>
	<div align="right" class="cfD">
		共有 ${page.rowCount } 条记录，当前第 <label>${page.pageIndex }</label> 页，共
		${page.pageCount } 页

		<c:choose>
			<c:when test="${page.hasPre }">
				<button style="height: 20px; width:60px; font-size: 14px"
					class="button" onclick="subForm(1)">首页</button>
				<button style="height: 20px; width:60px; font-size: 14px"
					class="button" onclick="subForm(${page.pageIndex-1 })">上一页</button>
			</c:when>
			<c:otherwise>
		   	 		首页
		   	 		上一页
		   	 	</c:otherwise>
		</c:choose>
		<c:choose>
			<c:when test="${page.hasNext }">
				<button style="height: 20px; width:60px; font-size: 14px"
					class="button" onclick="subForm(${page.pageIndex+1 })">下一页</button>
				<button style="height: 20px; width:60px; font-size: 14px"
					class="button" onclick="subForm(${page.pageCount})">尾页</button>
			</c:when>
			<c:otherwise>
		   	 		下一页
		   	 		尾页
		   	 	</c:otherwise>
		</c:choose>

		<button style="height: 20px; width:60px; font-size: 14px"
			class="button" onclick="subForm()">转到</button>
		<input type="text" name="pageIndex" id="pageIndex"
			value="${page.pageIndex }" /> 页
	</div>
	</form>
</body>
</html>