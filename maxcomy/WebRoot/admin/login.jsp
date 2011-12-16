<%@ page contentType="text/html; charset=gbk"%>
<%@include file="../common/admin_head.jsp"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
		<title>管理员登录</title>
	    <style type="text/css">
<!--
.STYLE1 {
	font-size: xx-large;
	font-weight: bold;
}
.STYLE3 {
	font-family: "宋体";
	font-weight: bold;
	font-size: x-large;
}
-->
        </style>
</head>
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

	<body bgcolor="#D6E0EF">
		<p align="center" class="STYLE1">&nbsp;</p>
		<p align="center" class="STYLE1">北京万事联网科技有限公司</p>
		<p align="center">	<span class="STYLE3">企业网站宣传后台管理系统</span><br />
	      <br />
	      <br />
    </p>
		<form action="../adminLog" method="post" name="form1"
			onsubmit="return fun_check_form()">
			<table width="600" border="0" align="center" cellpadding="0"
				cellspacing="0" bordercolor="#EBEBEB">
				<tr>
					<td>&nbsp;
						
				  </td>
				</tr>
				<tr>
					<td>&nbsp;
						
				  </td>
				</tr>
				<tr>
					<td>&nbsp;
						
				  </td>
				</tr>
				<tr align="left">
					<td height="35" colspan="2" bgcolor="#EAF0FB" class="p16">
						<div align="center">
							<span class="d6"><strong>管 理 员 登 录 </strong> </span>
						</div>
					</td>
				</tr>

				<tr>
					<td width="150" height="45" align="right" bgcolor="#EBEBEB"
						class="d5">
						您的帐号：					</td>
					<td width="350" align="left" bgcolor="#EBEBEB">
						<input name="name" id="name" type="text" />
					</td>
				</tr>
				<tr>
				</tr>
				<tr>
					<td width="150" height="45" align="right" bgcolor="#EBEBEB" class="d5">
						您的密码：					</td>
					<td align="left" bordercolor="#EBEBEB" bgcolor="#EBEBEB">
						<input name="pass" type="password" id="pass" size="21" />
					</td>
				</tr>
				<tr>
					<td width="150" height="45" align="right" bgcolor="#EBEBEB" class="d5">
						验证码：					</td>
					<td align="left" valign="middle" bordercolor="#EBEBEB"
						bgcolor="#EBEBEB">
						<p>
							<script language="javascript">
	
  function loadimage(){ 
    document.getElementById("randImage").src = "<%=basepath%>/common/enimg.jsp?"+Math.random(); 
  } 
	  </script>
							<input name="rand" id="rand" size="21" />
							&nbsp;&nbsp;&nbsp;
							<img src="<%=basepath%>/common/enimg.jsp" alt="code..."
								name="randImage" width="55" height="16" border="1"
								align="absmiddle" class="box" id="randImage" />
							<a href="javascript:loadimage();"><font color="#808080">看不清,换一张</font>
							</a>
						</p>
					</td>
				</tr>
				<tr align="left">
					<td height="35" colspan="2" align="right" bgcolor="#EAF0FB"
						class="p16">
						<div align="right">
							<span class="d6"><strong>&nbsp;</strong> </span>
						</div>
					</td>
				</tr>

				<tr>
					<td height="60" colspan="2" valign="bottom">
						<div align="center">
							<input name="submit" type="submit" class="d6" value="登  录" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="reset" type="reset" class="d6" value="重  置" />
						</div>
					</td>
				</tr>

				<tr>
				</tr>
		  </table>
		</form>
	</body>
</html>
