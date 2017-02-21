<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>2016国家公务员考试安排</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		font-size: 25px;
		background-color:#E0F7FA;
	}
	table tr td {
		text-align: center;padding: 10px;
	}
	table tr td a {
		color: #3F51B5;
		text-decoration: none;
	}
	#guokao {
		display: block;
	}
	#bishi {
		display: none;
	}
	</style>
  </head>
  
  <body>
<center><h1>2016国家公务员考试安排</h1></center>
<table width="35%" cellpadding="0" cellspacing="0" align="center" border="0">
	<tr>
		<td style="text-align: center;padding: 0px;">
			<table width="100%" cellpadding="0" cellspacing="0" align="center" border="1">
				<tr>
					<td width="50%" onclick="fun();">国考时刻表</td>
					<td onclick="fun_1();">笔试安排</td>
				</tr>
			</table>
			<table width="100%" cellpadding="0" cellspacing="0" align="center" border="1" id="guokao">
				<tr>
					<td>10-15网上报名</td>
					<td><a href="biao1.jsp">报名入口</a></td>
					<td><a href="#">报考条件</a></td>
				</tr>
				<tr>
					<td>10-28查询序号</td>
					<td><a href="#">报考指南</a></td>
					<td><a href="#">考试大纲</a></td>
				</tr>
				<tr>
					<td>11-02确认缴费</td>
					<td><a href="#">部门代码</a></td>
					<td><a href="#">缴费入口</a></td>
				</tr>
				<tr>
					<td>11-23准考证打印</td>
					<td><a href="#">打印入口</a></td>
					<td><a href="#">注意事项</a></td>
				</tr>
				<tr>
					<td>11-29国考笔试</td>
					<td><a href="#">真题答案</a></td>
					<td><a href="#">作弊入刑</a></td>
				</tr>
				<tr>
					<td>1月份 笔试成绩</td>
					<td><a href="#">成绩查询</a></td>
					<td><a href="#">调剂须知</a></td>
				</tr>
				<tr>
					<td>3月份 国考面试</td>
					<td><a href="#">面试流程</a></td>
					<td><a href="#">成绩计算</a></td>
				</tr>
				<tr>
					<td>4月份 录用结果</td>
					<td><a href="#">录用信息</a></td>
					<td><a href="#">体检</a></td>
				</tr>
			</table>
			<table width="100%" cellpadding="0" cellspacing="0" align="center" border="1" id="bishi">
				<tr>
					<td>日期</td>
					<td>时间</td>
					<td>考试科目</td>
				</tr>
				<tr>
					<td>2015/11/28</td>
					<td>14:00-16:00</td>
					<td>7个非通用语职位外语水平考试</td>
				</tr>
				<tr>
					<td>2015/11/28</td>
					<td>14:00-16:00</td>
					<td>银监会，证监会专业考试</td>
				</tr>
				<tr>
					<td>2015/11/29</td>
					<td>09:00-11:00</td>
					<td>行政职业能力测试</td>
				</tr>
				<tr>
					<td>2015/11/29</td>
					<td>14:00-17:00</td>
					<td>申论</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</body>
<script src="jquery/jquery.min.js"></script>
<script type="text/javascript">
	function fun(){
		$("#guokao").css("display","block");
		$("#bishi").css("display","none");
	}
	function fun_1(){
		$("#guokao").css("display","none");
		$("#bishi").css("display","block");
	}
</script>
</html>
