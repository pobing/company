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
				alert("�������û�����");
				return false;
			}else if(document.form1.pass.value==""){
				alert("���������룡");
				return false;
			}else{
				return true;
			}
		}
</script>
</head>
<body >
<!--top��Ϣ-->
	<div id="header">
    	<div id="topimg">������ɫ����</div>
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
     document.write( +getFullYear(today)+"��"
       +isnMonths[today.getMonth()]+""
       +today.getDate()+"��"+"&nbsp;&nbsp;"+isnDays[today.getDay()]);
    </script></h1>
                </div>
                <div class="nav">
                	<ul>
                	
                    	<li><a href="lxwm.jsp" target="page">��ϵ����</a></li>
                    	<li><a href="tdll.jsp" target="page">�Ŷ�����</a></li>
                        <li class="navattr"><a href="produce.jsp" target="page">��������</a></li>
                       <li><a href="xwjs.jsp" target="page">���ż���</a></li>
                        <li><a href="dxal.jsp" target="page">���Ͱ���</a></li>
                         <li><a href="xtgk.jsp" target="page">��Ʒ����</a></li>
                         <li><a href="jsys.jsp" target="page">��������</a></li>
                    	 <li><a href="../index.html">�ס�ҳ</a></li>          
                  </ul>
                </div>
            </div>
        </div>
        
         <!--top����-->   
<div class="banner">
<div class="lastnav">
        	<div class="lastnavul">
            	<ul class="display_none">
                	<li ><a href="zxly.jsp" target="page">��������</a></li>
                	<li class="lastnavheight"><a target="page" href="lxwm.jsp" >��ϵ����</a></li>
                </ul>
                 <ul class="display_none">
                	<li ><a href="jstd.jsp" target="page">�����Ŷ�</a></li>
                	<li class="lastnavheight"><a target="page" href="swtd.jsp" >�����Ŷ�</a></li>
                </ul>
                <ul>
                	<li><a href="fzjg.jsp" target="page">��֧�ṹ</a></li>
                    <li><a href="ryzz.jsp" target="page">��������</a></li>
                    <li><a href="gswh.jsp" target="page">��˾�Ļ�</a></li>
                    <li class="lastnavheight"><a target="page" href="produce.jsp">��˾���</a></li>
              </ul>
                <ul class="display_none">
                	<li></li>
                </ul>
                <ul class="display_none">
                	<li></li>
                </ul>
                <ul class="display_none" style="padding-right:240px;">
                    <li><a href="zzcp.jsp" target="page">�ն˲�Ʒ</a></li>
                    <li class="lastnavheight"><a target="page" href="xtgk.jsp">ϵͳ�ſ�</a></li>
                </ul>
                <ul class="display_none" style="padding-right:260px;">
                    <li><a href="lxsyms.jsp" target="page">������ҵģʽ</a></li>
                    <li><a href="ptys.jsp" target="page">ƽ̨���� </a></li>
                    <li class="lastnavheight"><a target="page" href="jsys.jsp">��������</a></li>
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
									<span>�û�����<input type="text" name="name" id="name" />
									</span>
									<span>���룺<input type="password" id="pass" name="pass" />
									</span>
									<span><input type="submit" name="tuichu" class="tuichu"
											value="��¼" /> </span>
								</form>
							</c:when>
							<c:when test="${logUser!=null}">
           ���� ${logUser.name}����ӭ��½��<input type="button" name="tuichu"
									class="tuichu" value="��ȫ�˳�"
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
