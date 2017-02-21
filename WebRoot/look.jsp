<%@ page language="java" import="java.util.*,com.cug.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1><center>公共考试统一报名网站注册用户</center></h1>
  
  <% ArrayList al = (ArrayList)request.getAttribute("result"); %>
  
   <table border="1" cellpadding="0" cellspacing="0" align="center" style="margin-top:50px;">
   	<tr>
   		<td style="padding:5px 30px;">用户ID</td>
   		<td style="padding:5px 30px;">用户邮箱</td>
   	</tr>
   	
   		<%
   		for(int i = 0;i < al.size();i ++){
   			UserInfo_1 ub = (UserInfo_1)al.get(i);
   			%>
   			<tr>
   			<td style="padding:5px 30px;"><%=ub.getID() %></td>
   			<td style="padding:5px 30px;"><%=ub.getEmail() %></td>
   			</tr>
   			<%
   		}
   		
   		 %>
   	
   </table>
   <table border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top:15px;">
   		<tr>
   			<td>
   				<%
   		int pageNow = Integer.parseInt((String)request.getAttribute("pageNow"));
   		if(pageNow!=1){
   		out.println("<a href='LookServlet?pageNow="+(pageNow-1)+"'>上一页</a>");
   		}
   		String s_pageCount = (String)request.getAttribute("pageCount");
   		int pageCount = Integer.parseInt(s_pageCount);
   		for(int i = 1;i <= pageCount;i ++){
   			out.println("<a href='LookServlet?pageNow="+i+"'>["+i+"]</a>");
   		}
   		if(pageNow!=pageCount){
   		out.println("<a href='LookServlet?pageNow="+(pageNow+1)+"'>下一页</a>");
   		}
    %>
   			</td>
   		</tr>
   </table>
   
  </body>
</html>
