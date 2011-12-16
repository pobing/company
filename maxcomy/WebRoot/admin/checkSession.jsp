<%@ page language="java"  pageEncoding="gbk"%>
<%@page import="com.max.entity.Users"%>
<%
	   	Users  userSession=(Users) session.getAttribute("userSession");
	   	if(userSession == null || userSession.getStatus()!=1){
	   		response.sendRedirect("../login.jsp");
	   	}

 %>