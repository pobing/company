<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
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
	<%
		int id = Integer.parseInt(request.getParameter("id"));
		NewsBIZ biz = new NewsBIZ();
		News news = biz.getNewsById(new Object[] { id });
	%>
	<body bgcolor="#D6E0EF">
		<%=news.getTitle()%><br />
		<img src="<%=news.getTypeurl().substring(21)%>" width="100px" /><br />
		<%=news.getCdate()%><br />
		<%=news.getCatalog()%><br />
		<%=news.getContent()%>
	</body>
</html>
