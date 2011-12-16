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
<title>Maxcom-新闻纪事</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
       <%
        NewsBIZ newsBiz=new NewsBIZ();
              List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1001"});
              News newsObj=newsList.get(0);
             %>
<body>
<div id="contains">
<div class="main">
    	<div class="ryzz">
        	<h1>新闻纪事：</h1>
            <div class="content">
            	<h1 style="text-align: center"> <%out.print(newsObj.getTitle()   ); %></h1>
        		<h4 style="text-align: center"> <%out.print(newsObj.getCdate()   ); %></h4>
            <div class="content" style="font: 14px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
            <%
                       out.print(newsObj.getContent());
             %>
 
            </div>
        </div>
    </div>
    </div>
    <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
