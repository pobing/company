<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
<%@page import="com.max.entity.Product"%>
<%@page import="com.max.biz.ProductBIZ"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
<title>产品详细页面</title>
<link href="<%=basePath %>/styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="contains">
<div class="pro_main">
    	<div class="ryzz">
    	       <%
            int id=Integer.parseInt(request.getParameter("id"));
              ProductBIZ proBiz=new ProductBIZ(); 
              Product proObj= proBiz.getProductById(new Object[]{id});
              if(proObj!=null){
             %>
        	<h1 style="text-align: center"> <%out.print(proObj.getName()   ); %></h1>
        		<h4 style="text-align: center"> <img width="300px" src="<%out.print(proObj.getPicture().substring(21)); %>"/></h4>
            <div class="content" style="font: 12px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
            <%
               
                       out.print(proObj.getContent());
            }else{
            
               out.print("出错了……");
            }
             %>
</div>
    </div>
<a href="javascript:window.history.go(-1)" class="linkcss">【返回】</a>
  </div>
  <div class="side">
   	  <h3>产品服务</h3>
        <p><a href="Chinsese/xtgk.jsp">Maxcom数字客房应用平台-系统</a></p>
        <p><a href="Chinsese/lxsyms.jsp">Maxcom数字客房应用平台-应用</a></p>
        <p><a href="Chinsese/zzcp.jsp">Maxcom数字客房应用平台-硬件</a></p>
      <h3>新闻纪事</h3>
        <ul>
        <c:forEach var="newsobj"  items="${sessionScope.newsjsList}">
        <li><a href="Chinsese/viewNews.jsp?id=${newsobj.id }">${fn:substring(newsobj.title,0,18)}</a></li>
        </c:forEach>
            </ul>
    </div>
   </div>
  </body>
</html>
