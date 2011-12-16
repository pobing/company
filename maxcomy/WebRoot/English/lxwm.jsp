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
<title>maxcom</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />

<body>
<div id="contains">
<div class="main">
    	<div class="ryzz">
        	<h1>联系我们：</h1>
            <div class="content">
            	北京万事联网科技有限公司<br />
                地址：北京市朝阳区裕民路12号中国国际科技会展中心C座C1216室<br />
                邮编：100029<br />
                电话：010-82251486<br />
                传真：010-82252757<br />

            </div>
        </div>

    </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
