<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Maxcom 平台介绍</title>
<link href="<%=basePath %>styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="contains">
<div class="main">
    	<div class="ryzz" style="height: 100%">
        	<h1>功能模块介绍：</h1>
        	  <div class="content">
        	  <p><strong>酒店服务</strong><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;酒店在平台上为客人提供客房点餐 、快速结账、洗衣服务、周边信息。不仅大大缩短了客人等待的时间，也提高了酒店的管理效率。 <br />
      <strong>新闻焦点</strong><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提供我们精心筛选的社会焦点、财经视野、体坛纵横、娱乐快报 <br />
  <strong>商务导航</strong><br />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 提供法律咨询、财务服务、秘书服务、运输报关、翻译服务、展览与参展的商务服务，使顾客在旅途中轻松进行工作。 <br />
  <strong>旅游资讯</strong><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;热门景点、每日推荐、风景名胜、本地特产、旅游资讯。 <br />
  b便于“酒店”的客房的客人掌握更多当地风土人情和游玩好去处。 <br />
  <strong>娱乐空间</strong><br />
<p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电影点播：系统的内容数据库中存储有大量的影视节目，主要有经典老片、欧美排行大片、港产影视、日韩剧场、偶像剧场等深受客人欢迎的影视栏目。系统的高性能可保证多用户同时点播轻松自如，播放的图像为真正DVD水平，两秒高速响应点播请求，音质最高可达AC-3质量，享受家庭影院的感觉。客人还可根据需要查询到自己心仪的影视，点播可以控制快进、快退、暂停等功能。 </p>
<p>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;音乐欣赏：系统提供了众多经典音乐和流行乐曲，客人可随意点播，也可上网收听更多精彩音乐，在“酒店”的客房也能获得家一般的舒适享受。 <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;游戏竞技：游戏平台安装了多款广受欢迎的电脑游戏。主要有休闲游戏、单机游戏等<br />
 
 <br/><div style="text-align: center">   共3页 当前2/3页 <a class="linkcss" href="ptjs.jsp"> 上一页</a><a class="linkcss" href="ptjs3.jsp">下一页</a> </div>
            	</div>
            	
            	  
    </div>

  </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
