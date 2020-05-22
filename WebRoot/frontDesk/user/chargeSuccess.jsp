<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>  
<head>  
        <meta charset="UTF-8">  
        <meta name="robots" content="noindex,nofollow">  
        <title>成功</title>  
        <style>  
            body{font-size: 14px;font-family: 'helvetica neue',tahoma,arial,'hiragino sans gb','microsoft yahei','Simsun',sans-serif; background-color:#fff; color:#808080;}  
            .wrap{margin:200px auto;width:510px;}  
            td{text-align:left; padding:2px 10px;}  
            td.header{font-size:22px; padding-bottom:10px; color:#000;}  
            td.check-info{padding-top:20px;}  
            a{color:#328ce5; text-decoration:none;}  
            a:hover{text-decoration:underline;}  
        </style>  
</head>  
<body>  
        <div class="wrap">  
            <table>  
                <tr>  
                    <td class="header">真好，充值成功！${msg } </td>  
                </tr>  
                <tr><td>点击此处跳转..<a href="/SSM/queryMoney?username=${user.userName }">立即跳转</a></td></tr>  
                
            </table>  
        </div>  
</body>  
</html>  

