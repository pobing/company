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
        	<h1>平台介绍：</h1>
            <div class="content">
   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MAXCOM数字客房应用平台是由北京宏网传媒有限公司自主开发的一套基于宽带网络的客房信息化整体解决方案。它以网络为基础，集硬件、软件和内容为一体，可以提供数字化、信息化、个性化、人性化的客房服务，并提供旅游资讯、影视点播、休闲图屋、音乐欣赏、游戏竞技，票务信息等特色内容，具有很强的时效性，维护便捷，以最简便的操作模式、丰富的服务内容，最大限度的满足入住客人对酒店的服务需求。是为酒店提高市场竞争力的最佳选择。
           <br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;一方面，该平台开发自己的服务功能，另一方面引入其他专业网站的优势内容，将他们的单一优势汇聚成综合优势，成为酒店新电子时代的组织者和集大成者，为酒店，这个极具区域电子服务特点并且急需多元化电子服务的行业提供了优质的电子服务，大大提高了旅行者的入住品质，开拓了酒店和旅游服务的新领域，对酒店的发展也将产生深远的影响。目前，该系统已经陆续在北京、上海、海南等地酒店开始投入安装。
        </div>
           <h1>特色服务介绍：</h1>
            <div class="content">  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  根据酒店客户和酒店对信息的不同要求，为酒店量身定制相应解决方案，提供便捷的酒店服务、新闻焦点、商务导航、旅游资讯、娱乐空间、票务查询。
   <br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;极其适合酒店集群式用户的使用特点，既宣传了酒店的形象，简化了酒店管理，又方便了用户熟悉当地旅游娱乐资源，同时也为酒店开发了增值服务。
   <br/><br/>      <div style="text-align: center">   共3页 当前1/3页 上一页 <a class="linkcss" href="ptjs2.jsp">下一页</a> </div>
          </div>
 
            	
            	
            	  
    </div>

  </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
