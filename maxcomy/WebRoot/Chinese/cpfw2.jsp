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
<title>Maxcom 产品服务</title>
<link href="<%=basePath %>styles/maxcom.css" rel="stylesheet" type="text/css" />
<body>
<div id="contains">
<div class="main">
    	<div class="ryzz" style="height: 100%">
        	<h1>产品服务：</h1>
            <div class="content">
    <strong>新功能升级服务</strong>：当产品进行比较重大的功能改进或者系统升级后，酒店需要此功能时，万事联网在允许的情况下提供升级服务。 <br />
    <strong>定期数据备份服务</strong>：定期为HSIA系统数据进行备份，包括但不限于以下内容：后台HBMS数据库、网关设备的配置、客人使用的认证页面。 </p>
<p><strong>现场服务</strong> <br />
    <strong>现场维护服务</strong>：办事处或者公司所在市中心2小时到达现场；100公里以内4小时到达；100公里以外选择最快交通方式当天或者次日到达现场。 <br />
    <strong>定期巡检服务</strong>：每季度通过远程登陆方式或者现场巡检方式至少进行一次巡检。 <br />
    <strong>预约现场值守服务</strong>：在重大会议或者重大活动期间，或者网络升级期间（非万事联网公司产品升级），万事联网可派驻技术工程师到现场驻点。（此服务每月不超过两次。） </p>
<p><strong>全方位培训</strong> <br />
    <strong>定期培训服务</strong>：根据客户网络使用情况，定期对相关人员培训，包括系统原理、常用功能、常见问题及处理方法。 </p>
            <br/>  <div style="text-align: center">   共2页 当前1/2页  <a class="linkcss" href="cpfw.jsp">上一页</a> 下一页</div>
            	</div>
            	
            	  
    </div>

  </div>
   <jsp:include page="right.jsp"></jsp:include>
    </div>
</body>
</html>
