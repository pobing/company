<%@ page language="java"  pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>��Ʒ��Ϣ����</title>
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
		<form name="form1" action="updatePro_do.jsp" method="post" enctype="multipart/form-data">
	
			<table cellspacing="1" cellpadding="4" width="100%"  align="left"
				class="tableborder" id="table3">
				<tr>
					<td colspan="12" class="header"> 
						��Ʒ��Ϣ����<br></td>
				</tr>
				<tr>
					<td class="altbg1">
						��Ʒ��ţ�
					</td>
					<td class="altbg2">
						<input type="text" name="pronum" id="pronum" size="34" value="${sessionScope.selPro.id }"  readonly="true" style="background: grey"/>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						��Ʒ���ƣ�
					</td>
					<td class="altbg2">
						<input type="text" name="title" id="title" size="34" value="${sessionScope.selPro.name }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						��Ʒ���ͣ�
					</td>
					<td class="altbg2">
							<select name="type" id="type">
								<option value="1001">
									���ӵ���һ���
								</option>
								<option value="1002">
									����һ���
								</option>
								<option value="1003">
									��ʾ��
								</option>
								<option value="1004">
									С����
								</option>
								<option value="1005">
									����
								</option>
								<option value="1006">
									���
								</option>
							</select>
					</td>
				</tr>	
				<tr>
					<td class="altbg1">
						��ƷͼƬ��
					</td>
					<td class="altbg2">
						<input type="file" name="picture" id ="picture" size="34" value="${sessionScope.selPro.picture }" />
					</td>
				</tr>
					<tr>
					<td class="altbg1">
						��Ʒ������
					</td>
					<td class="altbg2" colspan="11">
						<textarea rows="5" cols="60" name="desc" >${sessionScope.selPro.content }</textarea>
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
