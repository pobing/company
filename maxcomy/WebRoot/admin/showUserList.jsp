<%@ page language="java" pageEncoding="gbk"%>
<%@page import="com.max.dao.UserDao"%>
<%@page import="com.max.biz.UserBIZ"%>
<%@page import="java.util.List"%>
<%@page import="com.max.entity.Users"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.max.apimpl.ApiImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理人员-管理</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
	</head>
	<body>
		<form name="pageForm" action="showUserList.jsp" method="post">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
		
				<tr>
					<td colspan="20" align="center" class="header">
						<strong> 用户管理 </strong>
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
						<strong>编号</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>用户名</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>密码</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>性别</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>状态</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>编辑</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>删除</strong>
					</td>
				</tr>
				<%
ApiImpl impl = new ApiImpl();
request.setCharacterEncoding("gb2312");
int nowPages;//当前页
int pages;//请求页数
int countPerPage = 10 ; //每页显示条数
int pageCount;//总页数
ResultSet set=impl.excuteQuery("select count(*) from users",null);
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
String sql="select * from users order by id desc limit "+(nowPages-1)*countPerPage+" , "+ countPerPage+"";
ResultSet rs = impl.excuteQuery(sql,null);
while(rs.next()){
int id=rs.getInt("id");
String name=rs.getString("name");
String pass=rs.getString("pass");
int sex=rs.getInt("sex");
int stat=rs.getInt("status");
%>
					<tr>
						<td align="center" class="altbg2">
							<%=id %>
						</td>
						<td class="altbg2" align="center">
							<%=name %>
						</td>
						<td class="altbg2" align="center">
							<%=pass %>
						</td>
						<td class="altbg2" align="center">
					
						
						<% if(sex==1){
						out.print("男"); 
						}else{
						out.print("女"); 
						
						}
						%>
						</td>
						<td class="altbg2" align="center">
								<% if(stat==1){
						out.print("管理员"); 
						}else{
						out.print("普通用户"); 
						
						}
						%>
						
						</td>
						<td class="altbg2" align="center">
							<a href="../toUserEdit?userId=<%=id %>">编辑</a>
						</td>
						<td class="altbg2" align="center">
							<a href="../delUser?id=<%=id %> }"
								onClick="return window.confirm('确定要刪除该用戶？')">删除</a>
						</td>
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