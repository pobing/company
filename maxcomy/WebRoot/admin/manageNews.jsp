<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.max.apimpl.ApiImpl"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="java.sql.SQLException"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>������Ա-����</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
	</head>
<body>
<br><br><jsp:useBean id="tmessgeBean" scope="page" class="com.max.entity.News"/>
<form action="manageNews.jsp" method="post" name="pageForm">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			
			<tr>
				<td colspan="7" class="header">
					���Ź���				</td>
			</tr>
			<tr>
			<td class="altbg1" align="center"><b>���</b></td>
				<td align="center" class="altbg1">
					<b>���ű���</b>				</td>
				<td align="center" class="altbg1"><strong>�������</strong></td>
					<td align="center" class="altbg1"><strong>����ͼƬ</strong></td>
				<td align="center" class="altbg1">
					<b>���ŷ���ʱ��</b>				</td>
				<td align="center" class="altbg1">
					<b>�༭</b>				</td>
					<td align="center" class="altbg1">
					<b>ɾ��</b>				</td>
			</tr>
<%
ApiImpl impl = new ApiImpl();
request.setCharacterEncoding("gb2312");
int nowPages;//��ǰҳ
int pages;//����ҳ��
int countPerPage = 10 ; //ÿҳ��ʾ����
int pageCount;//��ҳ��
ResultSet set=impl.excuteQuery("select count(*) from news",null);
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
String sql="select * from news order by id desc limit "+(nowPages-1)*countPerPage+" , "+ countPerPage+"";
//String sql="select top "+countPerPage +" * from news where id not in (select top "+ (nowPages-1)*countPerPage +" id from news order by id desc) order by id desc";
ResultSet rs = impl.excuteQuery(sql,null);
while(rs.next()){
int id=rs.getInt("id");
String catalog=rs.getString("catalog");
Date date=rs.getDate("cdate");
String title=rs.getString("title");
String typeurl=rs.getString("typeurl");
%>
			<tr>
			<td  align="center" class="altbg2"><%=id %>	</td>
				<td align="center" class="altbg2"><a href="viewNews.jsp?id=<%=id %>"><%=title %></a></td>
				<td class="altbg2"  align="center"><%=catalog %></td>
				<td class="altbg2"  align="center"><%=typeurl %></td>
				<td class="altbg2"  align="center"><%=date %></td>
				<td class="altbg2"  align="center"><a href="../toNewsEdit?id=<%=id %>">�༭</a></td>
				<td class="altbg2"  align="center">
					<a href="../delNews?id=<%=id %>" onClick="return window.confirm('ȷ��Ҫ�h������������')">ɾ��</a>				</td>
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