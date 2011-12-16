<%@ page language="java" pageEncoding="gbk"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
		<script language="javascript">
		
	function checkName() {
	
		var name = document.form1.name.value;
		
		if (name.length == 0) {
			document.getElementById('duser').innerHTML = "<font size='-1'color='red' >管理员名称不能为空！</font>";
			return false;
		} else {
			document.getElementById('duser').innerHTML = "";
			return true;
		}
	}
	function checkPass() {
		var pwd = document.form1.pass.value;
		if (pwd.length == 0) {
			document.getElementById('pwd1').innerHTML = "<font size='-1'color='red' >密码不能为空！</font>";
			return false;
		} else {
			document.getElementById('pwd1').innerHTML = "";
			return true;
		}
	}
	function vaildPass() {
		var rpwd = document.form1.confirmpassword.value;
			var pwd = document.form1.pass.value;
		if (rpwd!=pwd) {
			document.getElementById('pwd2').innerHTML = "<font size='-1'color='red' >两次输入密码不一致！</font>";
			return false;
		} else {
			document.getElementById('pwd2').innerHTML = "";
			return true;
		}
	}
	
	</script>
	</head>

	<body>
		<form name="form1" action="../addUser" method="post">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">

				<input type="hidden" name="action" value="save" />
				<tr>
					<td colspan="12" class="header">
						管理员-添加
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
						管理员名称：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="name" id="name" size="34"
							onblur="	return checkName();">
						<div id="duser" style="display: inline"></div>
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
						密&nbsp; 码：
					</td>
					<td class="altbg2" colspan="11">
						<input type="password" name="pass" id="pass" size="34"
							onblur="return checkPass()">
						<div id="pwd1" style="display: inline"></div>
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
						确认密码：
					</td>
					<td class="altbg2" colspan="11">
						<input name="confirmpassword" id="confirmpassword" size="34"
							type="password" onblur="return vaildPass()">
						<div id="pwd2" style="display: inline"></div>
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
						性别：
					</td>
					<td class="altbg2" colspan="11">
						<label>
							男
							<input name="gender" id="gender" type="radio" value="1" checked>
							女
						</label>
						<label>
							<input type="radio" name="gender" id="gender" value="0">
						</label>
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
						状态：
					</td>
					<td class="altbg2" colspan="11">
						<label>
							可用
							<input name="stat" id="stat" type="radio" value="1" checked>
							不可用
							<input type="radio" name="stat" id="stat" value="0">
						</label>
					</td>
				</tr>
				<tr>
					<td align="center" class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<input type="submit" value="提交" name="B1"
							onClick="return fun_check_form();">
						&nbsp;
						<input type="reset" value="重置" name="B2">
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>
