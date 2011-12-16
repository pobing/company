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
<title>Maxcom 分支结构</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
<%
NewsBIZ newsBiz=new NewsBIZ();
List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1005"}); //1005代表分支机构
 %>
<body>
<div id="contains">
<div class="main">
    	<div class="ryzz">
        	<h1>分支机构：</h1>
             <div class="content">
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%
         if(newsList.size()!=0){
           News newsObj=newsList.get(0);
           out.print(newsObj.getContent());
         }else{
         out.print("暂无信息！");
         }
        
         %></p>
            </div>
            <h1>合作伙伴：</h1>
              <div class="content">
              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司和业界知名公司、国内著名院校建立了良好的合作伙伴关系。通过公司不断的发展壮大，万事联网科技为客户提供实用性强、质量稳定、功能丰富的高科技产品。</p></div>
        </div>

    </div>
    <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
