<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新闻详细页面</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="contains">
<div class="main" style="height: 100%">
    	<div class="ryzz">
    	       <%
              int id=Integer.parseInt(request.getParameter("id"));
              NewsBIZ newsBiz=new NewsBIZ();
              News newsObj= newsBiz.getNewsById(new Object[]{id});
              List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1001"});
              session.setAttribute("newsjsList",newsList);
             %>
        	<h1 style="text-align: center"> <%out.print(newsObj.getTitle()   ); %></h1>
        		<h4 style="text-align: center"> <%out.print(newsObj.getCdate()   ); %></h4>
            <div class="content" style="font: 14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
            <%
                       out.print(newsObj.getContent());
             %>
</div>
    </div>

  </div>
  <div class="side" style="height: 480px">
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
   </div>
  </body>
</html>
