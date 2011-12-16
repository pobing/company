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
<title>Maxcom 资质荣誉</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="contains">
<div class="main" style="height: 100%">
    	<div class="ryzz">
        	<h1>资质荣誉：</h1>
        	<ul>
            	<li><img src="../images/ryzz.gif" alt="" /></li>
                <li><img src="../images/ryzz.gif" alt="" /></li>
                <li><img src="../images/ryzz.gif" alt="" /></li>
                <li><img src="../images/rrzz.gif" alt="" /></li>
                <li><img src="../images/rrzz.gif" alt="" /></li>
                <li><img src="../images/rrzz.gif" alt="" /></li>
            </ul>
        </div>

    </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
