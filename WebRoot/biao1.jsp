<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公务员考试报名信息表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body  background="images/5-120601095939.jpg">
    <table width="800" cellpadding="0" cellspacing="0" border="0" align="center">
	<tr>
		<td>
			<table width="800" cellpadding="0" cellspacing="0" border="0" align="center">
				<tr>
					<td align="center" style="padding: 10px 5px;font-size: 30px;">
						公务员考试报名信息表
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
		<form action="EditServlet" method="post">
			<table width="800" cellpadding="0" cellspacing="0" border="0" align="center">
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">姓名</div></td>
					<td><input type="text" size="15" name="name"></input></td>
				</tr>
				<tr>
					<td style="padding:10px 25px;"><div style="float:right;">性别</div></td>
					<td><input name="sex" type="radio"  value="男" checked>男</input>&nbsp;
                        <input name="sex" type="radio"  value="女"> 女</input>
					</td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">出生年月</div></td>
					<td><input type="text" size="15" name="birth"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">所在地区</div></td>
					<td><input type="text" size="15" name="place"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">学历</div></td>
					<td><input type="text" size="15" name="grade"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">专业</div></td>
					<td><input type="text" size="15" name="pro"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">电话</div></td>
					<td><input type="text" size="15" name="num"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">邮箱</div></td>
					<td><input type="text" size="15" name="email"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">通讯地址</div></td>
					<td><input type="text" size="15" name="addre"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 25px;"><div style="float:right;">邮编</div></td>
					<td><input type="text" size="15" name="post"></input></td>
				</tr>
				<tr>
					<td style="padding: 10px 0px;">
						<input type="submit" value="提交" style="padding: 5px 5px; background-color: #0A9C2A; float:right;"></input>
					</td>
					<td  style="padding-left: 115px;">
						<input type="reset" value="重置" style="padding: 5px 5px; background-color: #0A9C2A;"></input>
					</td>
				</tr>
			</table>
		</form>
		</td>
	</tr>
</table>
  </body>
</html>
