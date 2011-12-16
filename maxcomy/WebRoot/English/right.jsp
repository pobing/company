<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
   NewsBIZ newsBiz=new NewsBIZ();
   List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1001"});
   session.setAttribute("newsjsList",newsList);
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'right.jsp' starting page</title>
    <link href="<%=basePath %>/styles/maxcom.css" rel="stylesheet" type="text/css" />
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
    <div class="side">
   	  <h3>产品服务</h3>
        <p><a href="xtgk.jsp">Maxcom数字客房应用平台-系统</a></p>
        <p><a href="lxsyms.jsp">Maxcom数字客房应用平台-应用</a></p>
        <p><a href="zzcp.jsp">Maxcom数字客房应用平台-硬件</a></p>
      <h3>新闻纪事</h3>
        <ul>
        <c:forEach var="newsobj"  items="${sessionScope.newsjsList}">
        <li><a href="viewNews.jsp?id=${newsobj.id }">${fn:substring(newsobj.title,0,14)}</a></li>
        </c:forEach>
            </ul>
    </div>
  </body>
</html>
