<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.max.apimpl.ApiImpl"%>
<%@page import="java.sql.SQLException"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>������Ա-��Ʒ����</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
	</head>
<body>
<br><br><jsp:useBean id="tmessgeBean" scope="page" class="com.max.entity.News"/>
<form action="manageNews.jsp" method="post" name="pageForm">
		<table cellspacing="1" cellpadding="4" width="100%"
			class="tableborder" id="table3">
			
			<tr>
				<td colspan="6" class="header">
					��Ʒ����				</td>
			</tr>
			<tr>
			<td class="altbg1" align="center"><b>���</b></td>
				<td align="center" class="altbg1">
					<b>��Ʒ����</b>				</td>
				<td align="center" class="altbg1"><strong>��Ʒ���</strong></td>
					<td align="center" class="altbg1"><strong>��ƷͼƬ</strong></td>
			
					<td align="center" class="altbg1">
					<b>�༭</b>				</td>
				<td align="center" class="altbg1">
					<b>ɾ��</b>				</td>
			</tr>
<%
ApiImpl impl = new ApiImpl();
request.setCharacterEncoding("gbk");
int nowPages;//��ǰҳ
int pages;//����ҳ��
int countPerPage = 10 ; //ÿҳ��ʾ����
int pageCount;//��ҳ��
ResultSet set=impl.excuteQuery("select count(*) from product",null);
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
String sql="select * from product order by id desc limit "+(nowPages-1)*countPerPage+" , "+ countPerPage+"";
//String sql="select top "+countPerPage +" * from news where id not in (select top "+ (nowPages-1)*countPerPage +" id from news order by id desc) order by id desc";
ResultSet rs = impl.excuteQuery(sql,null);
while(rs.next()){
int id=rs.getInt("id");
String name=rs.getString("name");
String desc=rs.getString("content").length()>17? rs.getString("content").substring(0,17):rs.getString("content");
String picture=rs.getString("picture");
int type=rs.getInt("type");
%>
			<tr>
			<td  align="center" class="altbg2"><%=id %>	</td>
				<td align="center" class="altbg2"><a href="viewPro.jsp?id=<%=id %>"><%=name %></a></td>
				<td class="altbg2"  align="center"><%=type %></td>
				<td class="altbg2"  align="center"><%=picture %></td>
			
				<td class="altbg2"  align="center"><a href="../toProEdit?id=<%=id %>">�༭</a> </td>
				<td class="altbg2"  align="center">
					<a href="../delPro?id=<%=id %>" onClick="return window.confirm('ȷ��Ҫ�h��������Ʒ��')">ɾ��</a>				</td>
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