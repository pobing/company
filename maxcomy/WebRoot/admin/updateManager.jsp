<%@ page language="java"  pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>����Ա����</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
		
		<script type="text/javascript">
		function checkPass() {
		var pwd = document.form1.pass.value;
		if (pwd.length == 0) {
			document.getElementById('pwd1').innerHTML = "<font size='-1'color='red' >���벻��Ϊ�գ�</font>";
			return false;
		} else {
			document.getElementById('pwd1').innerHTML = "";
			return true;
		}
	}
	function vaildPass() {
		var rpwd = document.form1.rpass.value;
			var pwd = document.form1.pass.value;
		if (rpwd!=pwd) {
			document.getElementById('pwd2').innerHTML = "<font size='-1'color='red' >�����������벻һ�£�</font>";
			return false;
		} else {
			document.getElementById('pwd2').innerHTML = "";
			return true;
		}
	}
		
		</script>
	</head>

	<body>
		<form name="form1" action="../updateUser" method="post" onSubmit="return fun_check_form()">
	
			<table cellspacing="1" cellpadding="4" width="100%"  align="left"
				class="tableborder" id="table3">
				<tr>
					<td colspan="12" class="header"> 
						����Ա��Ϣ����<br></td>
				</tr>
				<tr>
					<td class="altbg1">
						��ţ�
					</td>
					<td class="altbg2">
						<input type="text" name="id" id="id" size="34" value="${sessionScope.selUser.id }"  readonly="true" style="background: grey"/>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						����Ա���ƣ�
					</td>
					<td class="altbg2">
						<input type="text" name="name" size="34" value="${sessionScope.selUser.name }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						���������룺
					</td>
					<td class="altbg2">
						<input type="password" name="pass" size="34" onblur="return checkPass()" />
						<div id="pwd1" style="display: inline"></div>
					</td>
				</tr>	
				<tr>
					<td class="altbg1">
						ȷ�������룺
					</td>
					<td class="altbg2">
						<input type="password" name="rpass" size="34" onblur="return vaildPass()"/>
						<div id="pwd2" style="display: inline"></div>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						�Ա�
					</td>
					<td class="altbg2">
						<c:choose>
						<c:when test="${sessionScope.selUser.sex==1}">	��
							<input name="gender" id="gender" type="radio" value="1"  checked>
							<label> Ů
							<input type="radio" name="gender" id="gender" value="0">
						</label>
						</c:when>
							<c:when test="${sessionScope.selUser.sex==0}">	
							��<input name="gender" id="gender" type="radio" value="1"  >
							Ů<input name="gender" id="gender" type="radio" value="0"  checked></c:when>
						</c:choose>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						״̬��
					</td>
					<td class="altbg2">
							<c:choose>
						<c:when test="${sessionScope.selUser.status==1}">	����Ա
							<input name="stat" id="stat" type="radio" value="1"  checked>
							<label> ��ͨ�û�
							<input type="radio" name="stat" id="stat" value="0">
						</label>
						</c:when>
							<c:when test="${sessionScope.selUser.sex==0}">	
							����Ա<input name="stat" id="stat" type="radio" value="1"  >
							��ͨ�û�<input name="stat" id="stat" type="radio" value="0"  checked></c:when>
						</c:choose>
					</td>
				</tr>
				
				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2">
						<input type="submit" value="�ύ" name="B1" />
						&nbsp;
						<input type="reset" value="����" name="B2" />
					</td>
				</tr>

			</table>
	
		</form>
	</body>

</html>
