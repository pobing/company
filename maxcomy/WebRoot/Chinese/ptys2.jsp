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
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="contains">
<div class="main">
    	<div class="ryzz">
        	<h1>平台介绍：</h1>
            <div class="content">
         //   <%
//NewsBIZ newsBiz=new NewsBIZ();
// List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1007"}); //1007代表平台优势
 
 //if(newsList.size()!=0){
     //      News newsObj=newsList.get(0);
    ///       out.print(newsObj.getContent());
   //      }else{
   //      out.print("暂无信息！");
   //      }
 
 //%>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;MAXCOM数字客房应用平台是由北京宏网传媒有限公司自主开发的一套基于宽带网络的客房信息化整体解决方案。它以网络为基础，集硬件、软件和内容为一体，可以提供数字化、信息化、个性化、人性化的客房服务，并提供旅游资讯、影视点播、休闲图屋、音乐欣赏、游戏竞技，票务信息等特色内容，具有很强的时效性，维护便捷，以最简便的操作模式、丰富的服务内容，最大限度的满足入住客人对酒店的服务需求。是为酒店提高市场竞争力的最佳选择。
            	</div>
    </div>

  </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
