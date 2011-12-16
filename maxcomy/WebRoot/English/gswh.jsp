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
<title>公司文化</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
<%
NewsBIZ newsBiz=new NewsBIZ();
List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1003"}); //1003代表公司文化
 %>
<body>
<div id="contains">
<div class="main">
    	<div class="imgshow"><img src="../images/imgshow.gif" alt="" width="590" height="280" /></div>
        <div class="content" style="height: 500px">
        <h2>公司文化</h2>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
         if(newsList.size()!=0){
           News newsObj=newsList.get(0);
           out.print(newsObj.getContent());
         }else{
         out.print("暂无信息！");
         }
        
         %></p>
    </div>
    </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
