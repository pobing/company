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
		<title>������Ա-����</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
	</head>
	<body>
		<form name="pageForm" action="showUserList.jsp" method="post">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
		
				<tr>
					<td colspan="20" align="center" class="header">
						<strong> �û����� </strong>
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
						<strong>���</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>�û���</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>����</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>�Ա�</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>״̬</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>�༭</strong>
					</td>
					<td align="center" class="altbg1">
						<strong>ɾ��</strong>
					</td>
				</tr>
				<%
ApiImpl impl = new ApiImpl();
request.setCharacterEncoding("gb2312");
int nowPages;//��ǰҳ
int pages;//����ҳ��
int countPerPage = 10 ; //ÿҳ��ʾ����
int pageCount;//��ҳ��
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
pageCount = (int)Math.ceil((recordCount + countPerPage-1) / countPerPage);//�����ҳ��
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
						out.print("��"); 
						}else{
						out.print("Ů"); 
						
						}
						%>
						</td>
						<td class="altbg2" align="center">
								<% if(stat==1){
						out.print("����Ա"); 
						}else{
						out.print("��ͨ�û�"); 
						
						}
						%>
						
						</td>
						<td class="altbg2" align="center">
							<a href="../toUserEdit?userId=<%=id %>">�༭</a>
						</td>
						<td class="altbg2" align="center">
							<a href="../delUser?id=<%=id %> }"
								onClick="return window.confirm('ȷ��Ҫ�h�����Ñ���')">ɾ��</a>
						</td>
					</tr>
				<%
}
rs.close();
%>
<tr align="center">
<td colspan="6">����<font color=red><%= recordCount %></font>����¼&nbsp;��ǰ<font color=red><%= nowPages %>/<%= pageCount %></font>ҳ&nbsp;
<% if(pageCount > 1){ %>
<% if(pages > 1){%>
<a href="?pages=<%=1 %>">��ҳ</a>
<a href="?pages=<%= nowPages - 1 %>">��һҳ</a>
<%}%>
<%}if(pages < pageCount){%>
<a href="?pages=<%= nowPages+1 %>">��һҳ</a>
<%}if(pages != 1){%>
<a href="?pages=<%= pageCount %>">βҳ</a>
<% } %>��ת��
<select name="pages" onChange="javascript:this.form.submit();">
<% for(int i=1;i<=pageCount;i++){%>
<option value="<%= i %>" <% if(nowPages == i){%>selected<% } %>><%= i %></option>
<% } %>
</select>ҳ
</td>
</tr>
		</table>
		</form>
	</body>
</html>