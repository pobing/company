<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.max.biz.NewsBIZ"%>
<%@page import="com.max.entity.News"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Maxcom-典型案例</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />

<body>
<div id="contains">
<div class="main">
    	<div class="ryzz">
        	<h1>典型案例：</h1>
            <div class="content">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <%
NewsBIZ newsBiz=new NewsBIZ();
 List<News> newsList= newsBiz.getNewsByCatalog(new Object[]{"1011"}); //1011代表典型案例
 
 if(newsList.size()!=0){
           News newsObj=newsList.get(0);
           out.print(newsObj.getContent());
         }else{
         out.print("暂无信息！");
         }
 %>
            </div>
                    	<h1>案例图片：</h1>
        	<ul>
        	<div align="center">
            	<li><img src="../alimg/al1.jpg" alt=""  width="130" height="100" /></li>
                <li><img src="../alimg/al2.jpg" alt=""  width="130" height="100" /></li>
                <li><img src="../alimg/al3.jpg" alt=""  width="130" height="100" /></li>
                <li><img src="../alimg/al4.jpg" alt=""  width="130" height="100" /></li>
                <li><img src="../alimg/al5.jpg" alt=""  width="130" height="100" /></li>
                <li><img src="../alimg/al6.jpg" alt=""  width="130" height="100"/></li></div>
            </ul>
        </div>
    </div>
    <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
