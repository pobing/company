<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Maxcom-Index</title>
<link href="../styles/maxcom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../scripts/jquery.js" language="javascript"></script>
<script type="text/javascript" language="javascript" src="../scripts/nav.js"></script>
<script type="text/javascript" src="<%=basePath %>js/today_en.js"></script>
		<script type="text/javascript">
		function fun_check_form(){
			if(document.form1.name.value==""){
				alert("请输入用户名！");
				return false;
			}else if(document.form1.pass.value==""){
				alert("请输入密码！");
				return false;
			}else{
				return true;
			}
		}
</script>
</head>
<body >
<!--top信息-->
	<div id="header">
    	<div id="topimg">顶部蓝色背景</div>
        <div id="logoandcontent">
        	<div id="logo">logo</div>
            <div id="headcontent">
            	<div class="language">
                    <ul>
                    	<li ><a href="index.html">Chinese</a></li>
                       <li><a href="#">Russian</a></li>
                       <li><a href="#">Spanish</a></li>
                       <li class="height"><a href="#">English</a></li>
                  </ul>
                    <h1><script language="javascript">
     document.write( +getFullYear(today)+"年"
       +isnMonths[today.getMonth()]+""
       +today.getDate()+"日"+"&nbsp;&nbsp;"+isnDays[today.getDay()]);
    </script></h1>
                </div>
                <div class="nav">
                	<ul>
                	
                    	<li><a href="lxwm.jsp" target="page">联系我们</a></li>
                    	<li><a href="tdll.jsp" target="page">团队力量</a></li>
                        <li class="navattr"><a href="produce.jsp" target="page">关于我们</a></li>
                       <li><a href="xwjs.jsp" target="page">新闻纪事</a></li>
                        <li><a href="dxal.jsp" target="page">典型案例</a></li>
                         <li><a href="xtgk.jsp" target="page">产品服务</a></li>
                         <li><a href="jsys.jsp" target="page">领先优势</a></li>
                    	 <li><a href="../index.html">首　页</a></li>          
                  </ul>
                </div>
            </div>
        </div>
        
         <!--top二级-->   
<div class="banner">
<div class="lastnav">
        	<div class="lastnavul">
            	<ul class="display_none">
                	<li ><a href="zxly.jsp" target="page">在线留言</a></li>
                	<li class="lastnavheight"><a target="page" href="lxwm.jsp" >联系我们</a></li>
                </ul>
                 <ul class="display_none">
                	<li ><a href="jstd.jsp" target="page">技术团队</a></li>
                	<li class="lastnavheight"><a target="page" href="swtd.jsp" >商务团队</a></li>
                </ul>
                <ul>
                	<li><a href="fzjg.jsp" target="page">分支结构</a></li>
                    <li><a href="ryzz.jsp" target="page">资质荣誉</a></li>
                    <li><a href="gswh.jsp" target="page">公司文化</a></li>
                    <li class="lastnavheight"><a target="page" href="produce.jsp">公司简介</a></li>
              </ul>
                <ul class="display_none">
                	<li></li>
                </ul>
                <ul class="display_none">
                	<li></li>
                </ul>
                <ul class="display_none" style="padding-right:240px;">
                    <li><a href="zzcp.jsp" target="page">终端产品</a></li>
                    <li class="lastnavheight"><a target="page" href="xtgk.jsp">系统概况</a></li>
                </ul>
                <ul class="display_none" style="padding-right:260px;">
                    <li><a href="lxsyms.jsp" target="page">领先商业模式</a></li>
                    <li><a href="ptys.jsp" target="page">平台优势 </a></li>
                    <li class="lastnavheight"><a target="page" href="jsys.jsp">技术优势</a></li>
                </ul>
                <ul class="display_none">
                	<li></li>
                </ul>
            </div>
            <div class="user">
            	<c:choose>
							<c:when test="${logUser==null}">
								<form action="../pageLog" method="post" name="form1" id="form1"
									onsubmit="return fun_check_form()">
									<span>用户名：<input type="text" name="name" id="name" />
									</span>
									<span>密码：<input type="password" id="pass" name="pass" />
									</span>
									<span><input type="submit" name="tuichu" class="tuichu"
											value="登录" /> </span>
								</form>
							</c:when>
							<c:when test="${logUser!=null}">
           您好 ${logUser.name}，欢迎登陆！<input type="button" name="tuichu"
									class="tuichu" value="安全退出"
									onclick="location.href='../removeUser'" />
							</c:when>
						</c:choose>
          </div>
        </div>
</div>
    </div>
	<iframe id="heightname" name="page" frameborder="0"  height="470px" scrolling="no" width="100%" src="produce.jsp"  onload="SetCwinHeight(this);"></iframe>
    
<div id="foot"><img src="../images/index_04.gif" alt="" /></div>
</body>
</html>
