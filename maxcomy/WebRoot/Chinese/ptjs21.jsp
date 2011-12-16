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
            <h1>功能模块描述：</h1>
                        
        <strong>酒店服务</strong><br />
  酒店在平台上为客人提供客房点餐 、快速结账、洗衣服务、周边信息。不仅大大缩短了客人等待的时间，也提高了酒店的管理效率。
  <strong>新闻焦点</strong><br />
  提供我们精心筛选的社会焦点、财经视野、体坛纵横、娱乐快报 <br />
  <strong>商务导航</strong><br />
  提供法律咨询、财务服务、秘书服务、运输报关、翻译服务、展览与参展的商务服务，使顾客在旅途中轻松进行工作。 <br />
  <strong>旅游资讯</strong><br />
  热门景点、每日推荐、风景名胜、本地特产、旅游资讯。 <br />
  便于“酒店”的客房的客人掌握更多当地风土人情和游玩好去处。 <br />
  <strong>娱乐空间</strong><br />
<p><strong>	-电影点播</strong>：系统的内容数据库中存储有大量的影视节目，主要有经典老片、欧美排行大片、港产影视、日韩剧场、偶像剧场等深受客人欢迎的影视栏目。系统的高性能可保证多用户同时点播轻松自如，播放的图像为真正DVD水平，两秒高速响应点播请求，音质最高可达AC-3质量，享受家庭影院的感觉。客人还可根据需要查询到自己心仪的影视，点播可以控制快进、快退、暂停等功能。 </p>
<p><strong>-音乐欣赏</strong>：系统提供了众多经典音乐和流行乐曲，客人可随意点播，也可上网收听更多精彩音乐，在“酒店”的客房也能获得家一般的舒适享受。 <br />
  <strong>-游戏竞技</strong>：游戏平台安装了多款广受欢迎的电脑游戏。主要有休闲游戏、单机游戏等<br />
<strong>-休闲书屋</strong>：系统提供了电子图书阅读功能，书籍种类多样。囊括了古典文学、中外名著、网络小说、灵异玄幻，故事全集、笑话大全。</p>
<p><a name="OLE_LINK10" id="OLE_LINK10"><strong>票务查询</strong></a><br />
  飞机、火车、体育、演出、电影 </p>
<p>系统提供酒店客房的客人便捷的票务预订、酒店预订等信息，使顾客的旅程更丰富、更便捷。 <br />
    <strong>应用软件 </strong><br />
  酒店数字平台上提供多种语言版本办公软件、即时通讯软件 </p>
<p><strong>应急处理 </strong><br />
  提供发生意外的应急方案，幼儿、成人的健康咨询平台，就近的一些应急场所，为顾客的健康提供便捷服务。<br />
提供就近的医院和公安局信息，为顾客的安全保障服务。</p>

           <br/>  <div style="text-align: center">   共2页 当前1/2页  <a class="linkcss" href="ptjs.jsp">上一页</a> 下一页</div>
            	</div>
    </div>

  </div>
  
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
