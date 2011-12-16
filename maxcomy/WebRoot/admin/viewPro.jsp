<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.max.entity.Product"%>
<%@page import="com.max.biz.ProductBIZ"%>
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

		<title>My JSP 'viewNews.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<body bgcolor="#D6E0EF">
	<%
	int id = Integer.parseInt(request.getParameter("id"));
		ProductBIZ biz = new ProductBIZ();
		Product pro = biz.getProductById(new Object[] { id });
	 if(pro!=null){
	 %>
	    商品名称：<%=pro.getName()%><br />
		商品图片：<img src="<%=pro.getPicture().substring(21)%>"  /><br />
		商品类型：<%=pro.getType()%><br />
		商品描述：<%=pro.getContent()%><br />
	     <%
	}else{
	  out.print("信息出错！");
	}

	 %>
	<a href="javascript:window.location.href='managePro.jsp'">【返回】	</a>	
	</body>
</html>
