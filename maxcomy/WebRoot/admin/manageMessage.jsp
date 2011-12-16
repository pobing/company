<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.max.apimpl.ApiImpl"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="java.sql.SQLException"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理人员-管理</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
	</head>
<body>
<br><br><jsp:useBean id="tmessgeBean" scope="page" class="com.max.entity.News"/>
<form action="manageMessage.jsp" method="post" name="pageForm">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			
			<tr>
				<td colspan="7" class="header">
					留言管理				</td>
			</tr>
			<tr>
			<td class="altbg1" align="center"><b>编号</b></td>
			<td align="center" class="altbg1">
					<b>留言内容</b>				</td>
				<td align="center" class="altbg1">
					<b>昵称</b>				</td>
				<td align="center" class="altbg1"><strong>电话</strong></td>
					<td align="center" class="altbg1"><strong>邮箱</strong></td>
				<td align="center" class="altbg1">
					<b>留言时间</b>				</td>
				<td align="center" class="altbg1">
					<b>删除</b>				</td>
			</tr>
<%
ApiImpl impl = new ApiImpl();
request.setCharacterEncoding("gb2312");
int nowPages;//当前页
int pages;//请求页数
int countPerPage = 10 ; //每页显示条数
int pageCount;//总页数
ResultSet set=impl.excuteQuery("select count(*) from message",null);
int recordCount=0;
  try {
		if(set.next()){
		recordCount=set.getInt(1);
		  }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
pageCount = (int)Math.ceil((recordCount + countPerPage-1) / countPerPage);//算出总页数
if(request.getParameter("pages") == null){

pages = 1;
}else{
pages = new Integer(request.getParameter("pages")).intValue();
}
if(pages > pageCount){
nowPages = 1;
}else{
nowPages = pages;
}
String sql="select * from message order by id desc limit "+(nowPages-1)*countPerPage+" , "+ countPerPage+"";
//String sql="select top "+countPerPage +" * from news where id not in (select top "+ (nowPages-1)*countPerPage +" id from news order by id desc) order by id desc";
ResultSet rs = impl.excuteQuery(sql,null);
while(rs.next()){
int id=rs.getInt("id");
String name=rs.getString("nickname");
Date date=rs.getDate("cdate");
String mail=rs.getString("email");
String phone=rs.getString("phone");
String content=rs.getString("content").length()>17? rs.getString("content").substring(0,17)+"...":rs.getString("content");
%>
			<tr>
			<td  align="center" class="altbg2"><%=id %>	</td>
			<td  align="center" class="altbg2"><a href="viewMsg.jsp?id=<%=id %>"><%=content %></a>	</td>
				<td align="center" class="altbg2"><%=name %></td>
				<td class="altbg2"  align="center"><%=phone %></td>
				<td class="altbg2"  align="center"><%=mail %></td>
				<td class="altbg2"  align="center"><%=date %></td>
				<td class="altbg2"  align="center">
					<a href="../delMsg?id=<%=id %>" onClick="return window.confirm('确定要刪除该条留言吗？')">删除</a></td>
			</tr>
			<%
}
rs.close();
%>
<tr align="center">
<td colspan="6">共有<font color=red><%= recordCount %></font>条记录&nbsp;当前<font color=red><%= nowPages %>/<%= pageCount %></font>页&nbsp;
<% if(pageCount > 1){ %>
<% if(pages > 1){%>
<a href="?pages=<%=1 %>">首页</a>
<a href="?pages=<%= nowPages - 1 %>">上一页</a>
<%}%>
<%}if(pages < pageCount){%>
<a href="?pages=<%= nowPages+1 %>">下一页</a>
<%}if(pages != 1){%>
<a href="?pages=<%= pageCount %>">尾页</a>
<% } %>跳转到
<select name="pages" onChange="javascript:this.form.submit();">
<% for(int i=1;i<=pageCount;i++){%>
<option value="<%= i %>" <% if(nowPages == i){%>selected<% } %>><%= i %></option>
<% } %>
</select>页
</td>
</tr>
			</table>
			</form>
</body>
</html>