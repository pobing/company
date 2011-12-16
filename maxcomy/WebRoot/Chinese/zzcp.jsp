<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
<%@page import="com.max.apimpl.ApiImpl"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Maxcom 终端产品</title>
<link href="<%=basePath %>styles/maxcom.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
a:link {
	color: #747474;
}
a:visited {
	color: #747474;
	;
}
a:hover {
	color: #FF0033;
}
a:active {
	color: #FF0033;
}
-->
</style>
</head>
<body>
<div id="contains">
<form action="zzcp.jsp" method="post" name="pageForm">
<div class="main">
    	<div class="ryzz">
        	<h1>产品列表：</h1>
        	<ul>
        	
        	<%
ApiImpl impl = new ApiImpl();
request.setCharacterEncoding("gbk");
int nowPages;//当前页
int pages;//请求页数
int countPerPage = 6 ; //每页显示条数
int pageCount;//总页数
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
   <div align="center"> <li><a  href="showProduct.jsp?id=<%=id %>"><img src="<%=picture.substring(21) %>" alt=""  width="159" height="156"/></a><br/><a class="linkcss" href="showProduct.jsp?id=<%=id %>"><%=name %></a></li></div>
<%
}
rs.close();
%>
            </ul>
          <div style="width:100%; clear:both; text-align: center; color: #747474; " > 共有<%= recordCount %>条记录&nbsp;当前<%= nowPages %>/<%= pageCount %>页&nbsp;
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
</select>页</div>
        </div>

    </div>
    </form>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
