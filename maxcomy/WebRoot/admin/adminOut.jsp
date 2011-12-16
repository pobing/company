<%@ page language="java" pageEncoding="gbk"%>
<%
 // session.invalidate();
  session.removeAttribute("currentUser"); 
  
  response.sendRedirect("login.jsp");
%>

