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
    
    <title>�������</title>
    
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
        <p><strong>������Ϣ����</strong></p>
      </blockquote>
    </blockquote>
    <p>�ǳƣ�<%=msg.getNickname() %></p>
    <p>�绰��<%=msg.getPhone() %></p>
    <p>���䣺<%=msg.getEmail() %>	</p>
    <p>�������ݣ�<%=msg.getContent() %> </p>
    <p>����ʱ�䣺<%=msg.getCdate() %> </p>
  
    <blockquote>
      <blockquote>
        <blockquote>
          <p><a href="javascript:window.print();" class="altbg2">����ӡ��</a> <a href="javascript:window.location.href='manageMessage.jsp'"' class="altbg2" >�����ء�</a></p>
        </blockquote>
      </blockquote>
    </blockquote>
  </blockquote>
    <%
    }else
    out.print("������Գ���");
     %>
</div>
  </body>
</html>
