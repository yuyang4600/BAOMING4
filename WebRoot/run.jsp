<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>考试网站</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script src="jquery/jquery.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="CSS/css.css">
  </head>
  
  <body>
  <div id="back" style="width:1000px;border:1px solid #000; margin:0 auto;display:block;"> <strong>亲爱的<label></label>&nbsp;欢迎回来</strong></div>
  <div id="welcome" style="width:1000px;border:1px solid #000; margin:0 auto;display:none;"> <strong>亲爱的<label></label>&nbsp;您是第一次登录</strong></div>
  <div  style="width:1000px;border:1px solid #000; margin:0 auto;"> 
<!--页眉区-->
<table width="1000" border="1" cellpadding="0" cellspacing="0" align="center">
	<tr>
		<td width="600" style="padding-left: 50px">
		
			统一考试报名网站
			<div id="sss" style="float:right;margin-right:5px;display:none;">
			<a href="LookServlet?pageNow=1">[查看用户]</a></div>
		</td>
		<td style="padding-left: 50px">
			<button><a href="index.jsp">登录</a></button>
			<button><a href="Sign in.jsp">注册</a></button>
			<button style="float:right;"><a href="del.jsp" style="color:red;">取消报名</a></button>
		</td>
	</tr>
</table>

<!--搜索区-->

<table  border="0" cellpadding="0" cellspacing="0" width="1000" align="center">
	<tr>
		<td width="900" style="padding-top: 5px; padding-bottom: 5px;">
			<input type="text" value="公务员考试" size="34" style="font-size: 25px;float: right;" onfocus="if (value =='公务员考试'){value =''}" onblur="if (value ==''){value='公务员考试'}" />
		</td>
		<td style="padding-left: 10px;">
			<input type="button" value="搜索" class="enjoy" onClick="location.href='biao1.jsp'"></input>
		</td>
	</tr>
</table>


<!--考试区-->
<div class="bufff">	
<div class="mainnav">
  <ul style="margin:0; padding:0; text-align:left;">   
        <li><a href="#">  
            <ul style="padding-bottom:0;margin:0; padding:0; text-align:left;">
                <li class="imtext"><div class="imjiantou"></div><a href="#">学历类</a></li>
                <li class="gaodu"></li>
                <li><a href="#" title="2016中考">2016中考</a></li>
                <li class="imaxian"><a href="#" title="2016高考">2016高考</a></li>
                <li><a href="#" style="color:#c00;" title="2016考研">2016考研</a></li>
                <li class="imaxian"><a href="#" title="考研培训">考研培训</a></li>
                <li><a href="#" style="letter-spacing:6px;" title="在职研">在职研</a></li>
                <li class="imaxian"><a href="#" title="自学考试">自学考试</a></li>
                <li><a href="#" title="成人高考">成人高考</a></li>
                <li class="imaxian"><a href="#" title="法律硕士">法律硕士</a></li>
                <li><a href="#" title="MBA考试">MBA考试</a></li>
                <li class="imaxian"><a href="#" title="MPA考试">MPA考试</a></li>
                <li><a href="#" style="letter-spacing:6px;" title="专升本">专升本</a></li>
            </ul>
        
        </li>
        <li class="manli02"><a href="#"></a> 
            <ul class="imanv02">
                <li class="imtext"><div class="imjiantou"></div><a href="#" title="外语类">外语类</a></li>
                <li class="gaodu"></li>
                <li><a href="#" style="letter-spacing:6px;" title="四六级">四六级</a></li>
                <li class="imaxian"><a href="#" style="color:#c00;" title="职称英语">职称英语</a></li>
                <li><a href="#" title="商务英语">商务英语</a></li>
                <li class="imaxian"><a href="#" title="公共英语">公共英语</a></li>
                <li><a href="#" title="专四专八">专四专八</a></li>
                <li class="imaxian"><a href="#" title="口译笔译">口译笔译</a></li>
                <li><a href="#" style="display:inline;" title="托福">托福</a><a href="#" style="display:inline;" title="雅思">雅思</a></li>
                <li class="imaxian"><a href="#" style="display:inline;" title="日语">日语</a> <a href="#" style="display:inline;" title="GRE">GRE</a></li>
                <li><a href="#" style="color:#c00;" title="成人英语">成人英语</a></li>
                <li class="imaxian"><a href="#" title=""职称日语>职称日语</a></li>
                <li class="imdianxian"></li>
                <li><a href="#" style="letter-spacing:6px;" title="新概念">新概念</a></li>
                <li><a href="#" title="托业考试">托业考试</a></li>
                <li><a href="#" title="博思考试">博思考试</a></li>
                <li><a href="#" style="font-family:Arial;" title="GMAT">GMAT</a></li>
                <li><a href="#" title="攻硕英语">攻硕英语</a></li>
                <li><a href="#" title="申硕英语">申硕英语</a></li>
                <li><a href="#" title="零起点英">零起点英</a></li>
                <li><a href="#" title="零起点法">零起点法</a></li>
                <li><a href="#" title="零起点德">零起点德</a></li>
                <li><a href="#" title="零起点日">零起点日</a></li>
                <li><a href="#" title="零起点韩">零起点韩</a></li>
            </ul>     
        </li>
        <li class="manli03"><a href="#"></a>
            <ul class="imanv03">
                <li class="imtext"><div class="imjiantou"></div><a href="#" title="资格类">资格类</a></li>
                <li class="gaodu"></li>
                <li><a href="gwy.jsp"   style="letter-spacing:6px;color:#c00" title="公务员">公务员</a></li>
                <li class="imaxian"><a href="#" title="司法考试">司法考试</a></li>
                <li><a href="#" title="证券从业">证券从业</a></li>
                <li class="imaxian"><a href="#" style="color:#c00" title="基金从业">基金从业</a></li>
                <li><a href="#" title="银行从业">银行从业</a></li>
                <li class="imaxian"><a href="#" title="期货从业">期货从业</a></li>
                <li><a href="#" title="教师资格">教师资格</a></li> 
                <li class="imaxian"><a href="#" title="特岗教师">特岗教师</a></li>
                <li><a href="#" title="社工教师">社工考试</a></li>
                <li class="imaxian"><a href="#" title="心理咨询">心理咨询</a></li>
                <li class="imdianxian"></li>
                <li><a href="#" title="报关水平">报关水平</a></li>
               <li ><a href="#">报检水平</a></li>
              <li><a href="#">人力资源</a></li>
               <li ><a href="#">保险从业</a></li>
                <li><a href="#">出版资格</a></li>
                <li><a href="#" style="letter-spacing:6px;">广告师</a></li>
                <li><a href="#">国际商务</a></li>
                <li><a href="#" style="letter-spacing:6px;">外销员</a></li>
                <li><a href="#" style="letter-spacing:6px;">跟单员</a></li>
                <li><a href="#" style="letter-spacing:6px;">单证员</a></li>
                <li class="imdianxian"></li>
                <li><a href="#" style="letter-spacing:6px;">物流师</a></li>
                <li><a href="#" style="letter-spacing:6px;">营养师</a></li>
                <li><a href="#">企业培训</a></li>
                <li><a href="#">管理咨询</a></li>
                <li><a href="#">秘书资格</a></li>
                <li><a href="#">货运代理</a></li>
                <li><a href="#">网络编辑</a></li>
                <li><a href="#">电子商务</a></li>
                <li><a href="#">导游考试</a></li>
                <li><a href="#">价格鉴证</a></li>
                <li class="imdianxian"></li>
                <li><a href="#" style="letter-spacing:6px;">驾驶员</a></li>
                <li><a href="#" style="letter-spacing:6px;">营销师</a></li>
                <li><a href="#" style="letter-spacing:6px;">普通话</a></li>
                <li><a href="#">法律顾问</a></li>
            </ul>     
        </li>
        <li class="manli04"><a href="#"></a> 
            <ul class="imanv04">
                <li class="imtext"><div class="imjiantou"></div><a href="/kuaiji/">会计类</a></li>
                <li class="gaodu"></li>
                <li><a href="#" style="color:#c00">会计从业</a></li>
                <li class="imaxian"><a href="#" style="letter-spacing:6px;color:#c00" >经济师</a></li>
                <li><a href="#" >会计职称</a></li>
                <li class="imaxian"><a href="#"  style="">注会CPA</a></li>
                <li><a href="#">初级会计</a></li>
                <li class="imaxian"><a href="#">中级会计</a></li>
                <li><a href="#">理财规划</a> </li>
                <li class="imaxian"><a href="#" style="letter-spacing:6px;">审计师</a></li>
                <li><a href="#" style="letter-spacing:6px;">统计师</a></li>
                <li class="imaxian"><a href="#">统计从业</a></li>
                <li class="imdianxian"></li>
                <li><a href="#">资产评估</a></li>
                <li><a href="#" style="letter-spacing:6px;">税务师</a></li>
                <li><a href="#">基金从业</a></li>
                <li><a href="#">国际内审</a></li>
                <li><a href="#">高级会计</a></li>
                <li><a href="#">美国注会</a></li>
                <li><a href="#" style="letter-spacing:6px;">精算师</a></li>
                <li><a href="#" style="font-family:Arial;">ACCA</a></li>
                <li><a href="#">法律顾问</a></li>
                <li><a href="#">高级经济</a></li>
            </ul>     
        </li>
        <li class="manli05"><a href="#"></a>  
            <ul class="imanv05">
                <li class="imtext"><div class="imjiantou"></div><a href="#">工程类</a></li>
                <li class="gaodu"></li>
                 <li><a href="#">一级建造</a></li>
                 <li class="imaxian"><a href="#" style="color:#c00;">二级建造</a></li>
                 <li><a href="/gongcheng/zaojia/" style="letter-spacing:6px">造价师</a></li>
                 <li class="imaxian"><a href="#" style="letter-spacing:6px;">造价员</a></li>
                 <li><a href="#" style="letter-spacing:6px;">咨询师</a></li>
                 <li class="imaxian"><a href="#" style="letter-spacing:6px;">监理师</a></li>
                 <li><a href="#" style="letter-spacing:6px;">安全师</a></li>
                 <li class="imaxian"><a href="#" style="letter-spacing:6px;">招标师</a></li>
                 <li><a href="#" style="color:#c00;">消防工程</a></li>
                 <li class="imaxian"><a href="#">电气工程</a></li>
                 <li class="imdianxian"></li>
                 <li><a href="#" style="letter-spacing:6px;">建筑师</a></li>
                 <li><a href="#">房产经纪</a></li>
                 <li><a href="#" style="letter-spacing:6px;">测绘师</a></li>
                 <li><a href="#" style="color:#c00;">房产估价</a></li>
                 <li><a href="#">土地估价</a></li>
                 <li ><a href="#" >物业管理</a></li>
                 <li><a href="#" style="letter-spacing:6px;">质量师</a></li>
                 <li><a href="#">环境评价</a></li>
                 <li><a href="#" style="letter-spacing:6px;">结构师</a></li>
                 <li><a href="#">城市规划</a></li>
                 <li class="imdianxian"></li>
                 <li><a href="#" style="letter-spacing:6px;">计量师</a></li>
                 <li><a href="#" style="color:#c00;">岩土工程</a></li>
                 <li><a href="#">环保工程</a></li>
                 <li><a href="#">项目管理</a></li>
                 <li><a href="#">土地代理</a></li>
                 <li><a href="#">公路监理</a></li>
                 <li><a href="#">公路造价</a></li>
                 <li><a href="#" style="letter-spacing:6px;">化工师</a></li>
                 <li><a href="#">设备监理</a></li>
                 <li><a href="#" style="letter-spacing:6px;">材料员</a></li>
                 <li><a href="#">安全评价</a></li>
                 <li><a href="#">暖通工程</a></li>
                 <li><a href="#">给水排水</a></li>
            </ul>     

        </li>
        <li class="manli06"><a href="#"></a> 
            <ul class="imanv06" style="padding-bottom:0;">
                <li class="imtext"><div class="imjiantou"></div><a href="#">医学类</a></li>
                <li class="gaodu"></li>
                 <li><a href="#">卫生资格</a></li>
                 <li class="imaxian"><a href="#">执业医师</a></li>
                 <li><a href="#" style="color:#c00;">执业药师</a></li>
                 <li class="imaxian"><a href="#">执业护士</a></li>
                 <li><a href="#">临床医师</a></li>
                 <li class="imaxian"><a href="#">临床助理</a></li>
                 <li><a href="#">中医医师</a></li>
                 <li class="imaxian"><a href="#">中医助理</a></li>

                 <li><a href="#">口腔医师</a></li>
                 <li class="imaxian"><a href="#">口腔助理</a></li>
                 <li><a href="#">中西医师</a></li>
                 <li><a href="#">中西助理</a></li>
                 <li><a href="#">公卫执业</a></li>
                 <li><a href="#">公卫助理</a></li>
            </ul>    
        </li>
        <li class="manli07"><a href="http://www.exam8.com/"></a>
            <ul class="imanv07">
                 <li class="imtext" style="width:61px;"><div class="imjiantou"></div><a href="#">计算机</a></li>
                 <li class="gaodu2"></li>
                 <li class="imaxian2"><a href="#" style="color:#c00;" >等级考试</a></li>
                 <li class="imaxian2"><a href="#" >水平考试</a></li>
                 <li class="imaxian2"><a href="#" >职称考试</a></li>
                 <li class="imaxian2"><a href="#">微软认证</a></li>
                 <li class="imaxian2"><a href="#">思科认证</a></li>
                 <li class="imdianxian" style="width:53px;"></li>
                 <li><a href="#" style="font-family:Arial;">Oracle</a></li>
                 <li><a  href="#" style="font-family:Arial;">Linux</a></li>
                 <li><a  href="#">华为认证</a></li>
            </ul>    
        </li>
        <li class="manli08"><a href="#"></a>
            <ul class="imanv08" style="padding-bottom:0;">
                <li class="imtext" style="border:none;"><div class="imjiantou" style="left:65px;"></div><a href="#">考生相关</a></li>
                <li class="gaodu" style="border:none;"></li>
                <li><a href="#">实用文档</a></li>
                <li><a href="#" style="color:#c00;">作文大全</a></li>
                <li><a href="#">求职招聘</a></li>
                <li><a href="#">论文下载</a></li>
                <li><a href="#">宝宝起名</a></li>
                <li><a href="#">视频题库</a></li>
                <li><a href="#">直播课堂</a></li>
                <li><a href="#" style="color:#c00;">学 习 通</a></li>
                <li ><a href="#">雄鹰网校</a></li>
                <li class="imaxian"><a href="#">名师访谈</a></li>
                <li class="imdianxian"></li>
                <li><a href="#">公 开 课</a></li>
            </ul>    
        </li>
    </ul>
</div>
</div>
<div>
<!--图书区-->
<table width="1000" cellpadding="0" cellspacing="0" border="0" align="center">
    <tr>
        <td>
            <table width="1000" cellpadding="0" cellspacing="0" border="0" align="center">
                <tr>
                    <td style="padding: 2px 3px;">推荐考试用书</td>
                    <td onmouseover="rexiao()">热销图书</td>
                    <td onmouseover="gongcheng()">工程类</td>
                    <td onmouseover="kuaiji()">会计类</td>
                    <td onmouseover="zige()">资格类</td>
                    <td onmouseover="yixue()">医学类</td>
                    <td onmouseover="xueli()">学历类</td>
                    <td width="100" onmouseover="waiyu()">外语+计算机</td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<div id="rexiao" class="tushu">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="142"><img src="images/zcyy.gif" /></td>
            <td width="142"><img src="images/gwy.gif" /></td>
            <td width="142"><img src="images/jjs.gif" /></td>
            <td width="142"><img src="images/zhengquan.gif" /></td>
            <td width="142"><img src="images/bgy.gif" /></td>
            <td width="142"><img src="images/shuiwu.gif" /></td>
            <td width="148"><img src="images/jianzao2.gif" /></td>
        </tr>
    </table>
</div>

<div id="gongcheng" class="tushu">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="142"><img src="images/anquan.gif" /></td>
            <td width="142"><img src="images/jianli.gif" /></td>
            <td width="142"><img src="images/jianzao1.gif" /></td>
            <td width="142"><img src="images/jiegou.gif" /></td>
            <td width="142"><img src="images/zqaojia.gif" /></td>
            <td width="142"><img src="images/jianzao2.gif" /></td>
            <td width="148"><img src="images/jingsuanshi.gif" /></td>
        </tr>
    </table>
</div>

<div id="kuaiji" class="tushu">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="142"><img src="images/jingsuanshi.gif" /></td>
            <td width="142"><img src="images/jjs.gif" /></td>
            <td width="142"><img src="images/jjs-g.gif" /></td>
            <td width="142"><img src="images/kjcy.gif" /></td>
            <td width="142"><img src="images/kjzc.gif" /></td>
            <td width="142"><img src="images/kuajigj.gif" /></td>
            <td width="148"><img src="images/shuiwu.gif" /></td>
        </tr>
    </table>
</div>

<div id="zige" class="tushu">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="142"><img src="images/anquan.gif" /></td>
            <td width="142"><img src="images/bgy.gif" /></td>
            <td width="142"><img src="images/gjsw.gif" /></td>
            <td width="142"><img src="images/zixue.gif" /></td>
            <td width="142"><img src="images/jianzao1.gif" /></td>
            <td width="142"><img src="images/kouqiang.gif" /></td>
            <td width="148"><img src="images/shuiwu.gif" /></td>
        </tr>
    </table>
</div>

<div id="yixue" class="tushu">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="142"><img src="images/zyyishi.gif" /></td>
            <td width="142"><img src="images/zyyaoshi.gif" /></td>
            <td width="142"><img src="images/zhuliys.gif" /></td>
            <td width="142"><img src="images/zhongys.gif" /></td>
            <td width="142"><img src="images/weisheng.gif" /></td>
            <td width="142"><img src="images/lingchuang.gif" /></td>
            <td width="148"><img src="images/zixue.gif" /></td>
        </tr>
    </table>
</div>

<div id="xueli" class="tushu">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="142"><img src="images/chengkao.gif" /></td>
            <td width="142"><img src="images/fashuo.gif" /></td>
            <td width="142"><img src="images/kaoyan.gif" /></td>
            <td width="142"><img src="images/mba.gif" /></td>
            <td width="142"><img src="images/kydagang.gif" /></td>
            <td width="142"><img src="images/zixue.gif" /></td>
            <td width="142"><img src="images/jianzao2.gif" /></td>
        </tr>
    </table>
</div>

<div id="waiyu" class="tushu">
    <table cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td width="142"><img src="images/dengkao.gif" /></td>
            <td width="142"><img src="images/ggyy.gif" /></td>
            <td width="142"><img src="images/xingainian.gif" /></td>
            <td width="142"><img src="images/zcyy.gif" /></td>
            <td width="142"><img src="images/shangwu.gif" /></td>
            <td width="142"><img src="images/mba.gif" /></td>
            <td width="142"><img src="images/ruankao.gif" /></td>
        </tr>
    </table>
</div>
<div style="border:1px solid #000;">
<table width="1000" height="263" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size:12px;">
	<tr>
		<td><a href="#" title="友情链接">友情链接：</a></a></td>
		<td><a href="#" title="实习报告">实习报告</a></td>
		<td><a href="#" title="优学网">优学网</a></td>
		<td><a href="#" title="考试吧团购">考试吧团购</a></td>
		<td><a href="#" title="无忧网">无忧网</a></td>
		<td><a href="#" title="百度教育">百度教育</a></td>
		<td><a href="#" title="一级建造师">一级建造师</a></td>
		<td><a href="#" title="教育人生">教育人生</a></td>
		<td><a href="#" title="豆丁网">豆丁网</a></td>
		<td><a href="#" title="中华高校网">中华高校网</a></td>
	</tr>
	<tr>
		<td><a href="#" title="文都教育网">文都教育网</a></td>
		<td><a href="#" title="直接授课">直接授课</a></td>
		<td><a href="#" title="新东方">新东方</a></td>
		<td><a href="#" title="千里马招标">千里马招标</a></td>
		<td><a href="#" title="公开课">公开课</a></td>
		<td><a href="#" title="英语听力">英语听力</a></td>
		<td><a href="#" title="中学学科网">中学学科网</a></td>
		<td><a href="#" title="环球网校">环球网校</a></td>
		<td><a href="#" title="论文天下">论文天下</a></td>
		<td><a href="#" title="巨人教育网">巨人教育网</a></td>
	</tr>
	<tr>
		<td><a href="#" title="万题库高考">万题库高考</a></td>
		<td><a href="#" title="可可英语">可可英语</a></td>
		<td><a href="#" title="作文大全">作文大全</a></td>
		<td><a href="#" title="高考分数线">高考分数线</a></td>
		<td><a href="#" title="搜学网">搜学网</a></td>
		<td><a href="#" title="会计职称">会计职称</a></td>
		<td><a href="#" title="二级建造师">二级建造师</a></td>
		<td><a href="#" title="安游在线">安游在线</a></td>
		<td><a href="#" title="国家思考">国家思考</a></td>
		<td><a href="#" title="中国考研网">中国考研网</a></td>
	</tr>
	<tr>
		<td><a href="#" title="国家公务员">国家公务员</a></td>
		<td><a href="#" title="考试调剂">考试调剂</a></td>
		<td><a href="#" title="考研帮">考研帮</a></td>
		<td><a href="#" title="四六级答案">四六级答案</a></td>
		<td><a href="#" title="中考成绩">中考成绩</a></td>
		<td><a href="#" title="四级答案">四级答案</a></td>
		<td><a href="#" title="中考成绩">中考成绩</a></td>
		<td><a href="#" title="高考答案">高考答案</a></td>
		<td><a href="#" title="中国地质大学">中国地质大学</a></td>
		<td><a href="#" title="四六级成绩">四六级成绩</a></td>
	</tr>
	<tr>
		<td><a href="#" title="新东方在线">新东方在线</a></td>
		<td><a href="#" title="无忧雅思">无忧雅思</a></td>
		<td><a href="#" title="中公网校">中公网校</a></td>
		<td><a href="#" title="考研教育">考研教育</a></td>
		<td><a href="#" title="雄鹰网校">雄鹰网校</a></td>
		<td><a href="#" title="江苏考试网">江苏考试网</a></td>
		<td><a href="#" title="法律咨询">法律咨询</a></td>
		<td><a href="#" title="在线英语听力">在线英语听力</a></td>
		<td><a href="#" title="铁血军事">铁血军事</a></td>
		<td><a href="#" title="中国网教育">中国网教育</a></td>
	</tr>
	<tr>
		<td><a href="#" title="中公公务员">中工公务员</a></td>
		<td><a href="#" title="职称英语">职称英语</a></td>
		<td><a href="#" title="成人高考">成人高考</a></td>
		<td><a href="#" title="题库考试网">题库考试网</a></td>
		<td><a href="#" title="证券从业">证券从业</a></td>
		<td><a href="#" title="服装批发">服装批发</a></td>
		<td><a href="#" title="经济师考试">经济师考试</a></td>
		<td><a href="#" title="视频题库">视频题库</a></td>
		<td><a href="#" title="职业医师">职业医师</a></td>
		<td><a href="#" title="申请链接">申请链接：</a></td>
	</tr>
	
</table>
</div>
<div style="border:1px solid #000;">
<table width="800" height="80" border="0" cellpadding="0" cellspacing="0" align="center" style="font-size:12px;">
	<tr>
		<td><a href="#" title="北京">北京</a></td>
		<td><a href="#" title="上海">上海</a></td>
		<td><a href="#" title="天津">天津</a></td>
		<td><a href="#" title="重庆">重庆</a></td>
		<td><a href="#" title="河北">河北</a></td>
		<td><a href="#" title="山西">山西</a></td>
		<td><a href="#" title="内蒙">内蒙</a></td>
		<td><a href="#" title="辽宁">辽宁</a></td>
		<td><a href="#" title="吉林">吉林</a></td>
		<td><a href="#" title="黑龙江">黑龙江</a></td>
		<td><a href="#" title="江苏">江苏</a></td>
		<td align="center"><a href="#" title="浙江">浙江</a></td>
		<td><a href="#" title="安徽">安徽</a></td>
		<td align="center"><a href="#" title="福建">福建</a></td>
		<td><a href="#" title="江西">江西</a></td>
		<td><a href="#" title="山东">山东</a></td>
		<td><a href="#" title="河南">河南</a></td>
		<td><a href="#" title="湖北">湖北</a></td>
		<td><a href="#" title="湖南">湖南</a></td>
		<td><a href="#" title="广东">广东</a></td>
	</tr>
	<tr>
		<td><a href="#" title="广西">广西</a></td>
		<td><a href="#" title="海南">海南</a></td>
		<td><a href="#" title="四川">四川</a></td>
		<td><a href="#" title="贵州">贵州</a></td>
		<td><a href="#" title="云南">云南</a></td>
		<td><a href="#" title="西藏">西藏</a></td>
		<td><a href="#" title="陕西">陕西</a></td>
		<td><a href="#" title="甘肃">甘肃</a></td>
		<td><a href="#" title="青海">青海</a></td>
		<td><a href="#" title="宁夏">宁夏</a></td>
		<td><a href="#" title="新疆">新疆</a></td>
		<td align="center"><a href="#" title="新疆建设兵团">新疆建设兵团</a></td>
		<td><a href="#" title="军星网">军星网</a></td>
		<td align="center"><a href="#" title="军队人才网">军队人才网</a></td>
		<td colspan="6"></td>
		
	</tr>
</table>
</div>
<!--页脚区-->
<table width="1000" border="0" cellpadding="0" cellspacing="0" align="center">
	<tr>
		<td align="center" style="font-size:12px;">
			关于本站&nbsp网站声明&nbsp广告服务&nbsp联系方式&nbsp付款方式&nbsp站内导航&nbsp客服中心&nbsp友情链接&nbsp诚聘英才&nbsp最新更新&nbsp网站地图
		</td>
	</tr>
	<tr>
		<td>
			<div dir="rtl" style="font-size:12px;">联系方式：电话18202754600&nbsp&nbsp&nbsp邮箱：1635512074@qq.com</div>
		</td>
	</tr>
</table>
</div>
</div>
</body>
<script type="text/javascript" src="JS/js.js"></script>
<script type="text/javascript">
	var s_flag = '<%= request.getParameter("flag") %>'; 
	 var admin = "1635512074@qq.com";
		function fun(){
				if(s_flag == admin){
					$("#sss").css("display","block");
				}
		}
	fun();
	cookie();
	function cookie(){
		var b = '<%=request.getAttribute("a") %>';
		
		if(b == 1){
			var email = '<%=request.getAttribute("s_email") %>';
			$("label").text(email);
		}else if(b == 0){
			var email = '<%=request.getAttribute("s_email") %>';
			$("#welcome").css("display","block");
			$("#back").css("display","none");
			$("label").text(email);
		}
	}
</script>

</html>
