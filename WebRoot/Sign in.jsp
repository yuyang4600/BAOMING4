<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
	<title>报名考试系统注册</title>
<style type="text/css">
table tr td {
	color: #000;
	font-size: 15px;
}
</style>
</head>
<body background="images/5-120601095941-50.jpg">

<!--<form name="form1" method="post" action="save.jsp">  -->

<form action="HelloServlet" name="form1" method="post">
<table width="420" border="0" height="300" align="center" cellpadding="0" cellspacing="0" style="font-size: 12px; color: #FFF;font-weight: bold;">
   <tr><td align="center" style="font-size: 25px;">欢迎加入公共考试统一报名网站</td></tr>
   <tr>
   	<td>
   		<table width="98%" border="0" align="center" cellpadding="5" cellspacing="0">
   			
   				<tr>
   					<td width="23%" height="22" align="center">邮箱:</td>
   					<td width="77%" height="22"><input type="text" name="email" id="text_id" size="20" /></td>
   				</tr>
   				<tr>
   					<td width="23%" height="22" align="center">密码:</td>
   					<td width="77%" height="22"><input type="password" name="password" id="pass_id" size="20" /></td>
   				</tr>
   				<tr>
   					<td td width="23%" height="22" align="center">确认密码:</td>
   					<td td width="77%" height="22"><input type="password" size="20" name="surepasswd" /></td>
   				</tr>
   			
   		</table>
   	</td>
   </tr>
   <tr>
      <td>&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" value="立即注册" style="font-size: 20px; font-weight: bold;padding: 3px 45px;"></input></td>
   </tr>
   </table>
   </form>
</body>
<script type="text/javascript" src="jquery/jquery.min.js"></script>
<script type="text/javascript">

</script>








</html>