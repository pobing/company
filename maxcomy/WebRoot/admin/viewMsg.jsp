<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.max.biz.MessageBIZ"%>
<%@page import="com.max.entity.Message"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>浏览留言</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="../css/style_admin.css">
  </head>
  <%
  int id=Integer.parseInt(request.getParameter("id"));
  
  MessageBIZ msgBiz=new MessageBIZ();
  Message msg=msgBiz.getMessageById(new Object[]{id});
  
   %>
  <body bgcolor="#D6E0EF">
   <div>
    <%
    if(msg!=null){
     %>
  <blockquote>
    <blockquote>
      <blockquote>
        <p><strong>留言信息内容</strong></p>
      </blockquote>
    </blockquote>
    <p>昵称：<%=msg.getNickname() %></p>
    <p>电话：<%=msg.getPhone() %></p>
    <p>邮箱：<%=msg.getEmail() %>	</p>
    <p>留言内容：<%=msg.getContent() %> </p>
    <p>留言时间：<%=msg.getCdate() %> </p>
  
    <blockquote>
      <blockquote>
        <blockquote>
          <p><a href="javascript:window.print();" class="altbg2">【打印】</a> <a href="javascript:window.location.href='manageMessage.jsp'"' class="altbg2" >【返回】</a></p>
        </blockquote>
      </blockquote>
    </blockquote>
  </blockquote>
    <%
    }else
    out.print("浏览留言出错");
     %>
</div>
  </body>
</html>
