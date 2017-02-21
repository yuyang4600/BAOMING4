<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公共考试统一报名系统</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="jquery/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#text_id").blur(function(){
			var text_value = $("#text_id").val();
			$.ajax({
				url:"/BAOMING4/AjaxServlet",
				data:{val:text_value},
				async:true,   //是否为异步请求
				cache:false,
				type:"post",
				dataType:"json",  //服务器返回的数据类型
				success:function(result){
					if(result){
						$("#pass_id").val(result);
					}else{
						$("label").text("用户名不存在");
					}
				}
			});
		});
	});
</script>
<style type="text/css">
table tr td {
	color: #000;
	font-size: 15px;
}
</style>
  </head>
  <body background="images/5-120601095943-50.jpg">
    <table width="420" border="0" height="400" align="center" cellpadding="0" cellspacing="0" style="font-size: 12px; color: #FFF;font-weight: bold;">
   <tr><td align="center" style="font-size: 25px;">欢迎来到公共考试统一报名网站</td></tr>
   <tr>
   	<td>
   	<form action="LoginServlet" method="post" name="form1">
   		<table width="98%" border="0" align="center" cellpadding="5" cellspacing="0">
   			
   				<tr>
   					<td width="23%" height="22" align="center" >邮箱:</td>
   					<td width="77%" height="22"><input type="text" name="text_name" id="text_id" size="20" /><label></label></td>
   				</tr>
   				<tr>
   					<td width="23%" height="22" align="center">密码:</td>
   					<td width="77%" height="22"><input type="password" name="pass_name" id="pass_id" size="20" /></td>
   				</tr>
   				<tr>
   					<td td width="23%" height="22" align="center">验证码:</td>
   					<td td width="77%" height="22">
   					
   					<input type="text" size="10" name="check_name"/>&nbsp
   					<img src="/BAOMING4/CreateCode" id="check_num"><span onClick="check()" onmouseover="this.style.cursor='hand'" style="color:blue">看不清?换一个</span>
   					
   					<!--  
   					<input type="text" id="sure" size="5" name="change_name"></input>&nbsp
   					<input type="button" value="换一个" onclick="change()"></input>
   					-->
   					</td>
   				</tr>
   				<tr>
   					<td></td>
   					<td>&nbsp&nbsp<input type="submit" value="登录" style="color:blue;"/>&nbsp&nbsp&nbsp&nbsp
   					<button><a href="Sign in.jsp" style="text-decoration: none;">注册</a></button></td>
   				</tr>
   				<tr>
   					<td colspan="2" height="50" style="visibility: hidden;"><%=request.getParameter("err_1") %></td>
   				</tr>
   		</table>
   	</form>
   	</td>
   </tr>
   </table>
  </body>
 <script src="jquery/jquery.min.js"></script>
 <script type="text/javascript">
	function check(){
	document.getElementById("check_num").src=document.getElementById("check_num").src+"?nocache="
	+new Date().getTime();
		
	}
</script>
</html>
