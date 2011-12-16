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
        	<p> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;休闲书屋：系统提供了电子图书阅读功能，书籍种类多样。囊括了古典文学、中外名著、 网络小说、灵异玄幻，故事全集、笑话大全。</p>
<p><a name="OLE_LINK10" id="OLE_LINK10"><strong>票务查询</strong></a><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;飞机、火车、体育、演出、电影 </p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统提供酒店客房的客人便捷的票务预订、酒店预订等信息，使顾客的旅程更丰富、更便捷。 <br />
    <strong>应用软件 </strong><br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;酒店数字平台上提供多种语言版本办公软件、即时通讯软件 </p>
<p><strong>应急处理 </strong><br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;提供发生意外的应急方案，幼儿、成人的健康咨询平台，就近的一些应急场所，为顾客的健康提供便捷服务。提供就近的医院和公安局信息，为顾客的安全保障服务。
</p>
<br/> <div style="text-align: center">   共3页 当前3/3页 <a class="linkcss" href="ptjs2.jsp"> 上一页</a>下一页 </div>
            	</div>
            	
            	  
    </div>

  </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
