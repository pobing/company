<%@ page language="java" pageEncoding="gbk"%>
<%@page import="com.max.util.Tools"%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>�������</title>
		<style type="text/css">
.menutitle {
	cursor: pointer;
	margin-bottom: 0px; background-image =url('images/menu_1.gif');
	color: #FFFFFF;
	width: 158px;
	text-align: center;
	font-weight: bold;
	background-color: #698CC3;
	padding-left: 0px;
	padding-right: 0px;
	padding-top: 2px;
	padding-bottom: 2px
}

}
.submenu {
	margin-bottom: 0em;
}

.cn {
	FONT-SIZE: 9pt;
	COLOR: #006599;
	FONT-FAMILY: ����
}
</style>
		<style type="text/css">
<!--
.timeF {
	text-decoration: none;
	margin: 0px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	background: #698CC3;
}
-->
</style>
		<script language="javascript" type="text/javascript">
if (document.getElementById){ 
document.write('<style type="text/css">\n')
document.write('.submenu{display: none;}\n')
document.write('</style>\n')
}

function SwitchMenu(obj){
	if(document.getElementById){
	var el = document.getElementById(obj);
	var ar = document.getElementById("masterdiv").getElementsByTagName("span"); 
		if(el.style.display != "block"){ 
			for (var i=0; i<ar.length; i++){
				if (ar[i].className=="submenu") 
				ar[i].style.display = "none";
			}
			el.style.display = "block";
		}else{
			el.style.display = "none";
		}
	}
}

function killErrors() {
return true;
}

window.onerror = killErrors;
</script>

		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
		<script type="text/javascript" src="../js/common.js"></script>
		<script type="text/javascript" src="../js/time.js"></script>
		<script type="text/javascript" src="../js/today.js"></script>
		<base target="main">
	</head>
	<body topmargin="0" leftmargin="2" rightmargin="2" bottommargin="2"
		style="background-color: #698CC3" onload="show()">

		<div id="masterdiv">
			<table border="0" width="158" id="table1" cellpadding="4"
				style="border-collapse: collapse">
				<tr>
					<td>
						<font color="#FFFFFF"><b>��ӭ
								${sessionScope.currentUser.name} ��¼</b> </font>
					</td>
				</tr>
				<tr>
					<td>
						<script language="javascript">
     document.write( +getFullYear(today)+"��"
       +isnMonths[today.getMonth()]+""
       +today.getDate()+"��"+"&nbsp;&nbsp;"+isnDays[today.getDay()]);
    </script>
					</td>
				</tr>
				<tr>
					<td>
						<form name="Tick">
							<input type="text" size="11" class="timeF" name="Clock"
								readonly="true">
						</form>
					</td>
				</tr>
				<tr>
					<td>
						<p align="center">
							<font color="#FFFFFF">[<a target="_parent"
								href="adminOut.jsp"><font color="#FFFFFF">��ȫ�˳�</font> </a>] [<a
								target="_parent" href="../index.html"><font color="#FFFFFF">������ҳ</font>
							</a>]</font>
					</td>
				</tr>
			</table>
			<div class="menutitle" onClick="SwitchMenu('sub1')">
				.ϵͳ����
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub1">
				<table cellspacing="1" cellpadding="4" width="158"
					class="tableborder">
					<TR class=altbg1>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							&nbsp;&nbsp;
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addManager.jsp">��ӹ���Ա</a>
						</TD>
					</TR>
					<TR class=altbg1>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							&nbsp;&nbsp;
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="showUserList.jsp">�û�����&nbsp;&nbsp;</a>
						</TD>
					</TR>
				</table> </span>

			<div class="menutitle" onClick="SwitchMenu('sub8')">
				.���Ź���
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub8">
				<TABLE cellSpacing="0" cellPadding="0" width="158"
					background="images/menu_2.gif" border="0">
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addNews.jsp">�������</a>
						</TD>
					</TR>
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="manageNews.jsp">��������</a>
						</TD>
					</TR>
				</table> </span>

			<div class="menutitle" onClick=
	SwitchMenu('sub3');
>
				.��Ʒ����
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub3">
				<TABLE cellSpacing="0" cellPadding="0" width="158"
					background="images/menu_2.gif" border="0">
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="addProduct.jsp">�����Ʒ</a>
						</TD>
					</TR>
					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="managePro.jsp">������Ʒ</a>
						</TD>
					</TR>
				</table> </span>

		</div>
		
			<div class="menutitle" onClick=
	SwitchMenu('sub4');
>
				.���Թ���
				<TABLE width="158" cellSpacing="0" cellPadding="0" border="0">
					<TR>
						<TD height="3"></TD>
					</TR>
					<TR>
						<TD bgColor="#ffffff" height="1"></TD>
					</TR>
				</TABLE>
			</div>
			<span class="submenu" id="sub4">
				<TABLE cellSpacing="0" cellPadding="0" width="158"
					background="images/menu_2.gif" border="0">

					<TR>
						<TD height=25 width="100%" align="center" bgcolor="#D6E0EF">
							<img border="0" src="../image/icon_arrow_r.gif" width="13"
								height="13">
							<a class="menu" target="main" href="manageMessage.jsp">��������</a>
						</TD>
					</TR>
				</table> </span>

		</div>
	</body>

</html>
