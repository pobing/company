<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.max.entity.News"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <title>Maxcom 公司简介</title>
<link href="<%=basePath %>/styles/maxcom.css" rel="stylesheet" type="text/css" />
<%
NewsBIZ newsBiz=new NewsBIZ();
 List<News> produceList= newsBiz.getNewsByCatalog(new Object[]{"1002"});
    List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1001"});
   session.setAttribute("newsjsList",newsList);
 %>
</head>
<body>
<div id="contains">
<div class="main">
    	<div class="imgshow"><img src="<%=basePath %>/images/imgshow.gif" alt="" width="590" height="280" /></div>
        <div class="content">
        <h2>公司简介</h2>
        
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <%
         if(produceList.size()!=0){
           News newsObj=produceList.get(0);
           out.print(newsObj.getContent());
         }else{
         out.print("暂无信息！");
         }
        
         %>
         </p>
        </div>
    </div>
    
    <div class="side">
   	  <h3>产品服务</h3>
        <p><a href="Chinese/xtgk.jsp">Maxcom数字客房应用平台-系统</a></p>
        <p><a href="Chinese/lxsyms.jsp">Maxcom数字客房应用平台-应用</a></p>
        <p><a href="Chinese/zzcp.jsp">Maxcom数字客房应用平台-硬件</a></p>
      <h3>新闻纪事</h3>
        <ul>
        <c:forEach var="newsobj"  items="${sessionScope.newsjsList}">
        <li><a href="Chinese/viewNews.jsp?id=${newsobj.id }">${fn:substring(newsobj.title,0,14)}</a></li>
        </c:forEach>
            </ul>
    </div>
   
    </div>
</body>
</html>
