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
		<form name="form1" action="updateNews_do.jsp" method="post" enctype="multipart/form-data">
	
			<table cellspacing="1" cellpadding="4" width="100%"  align="left"
				class="tableborder" id="table3">
				<tr>
					<td colspan="12" class="header"> 
						������Ϣ����<br></td>
				</tr>
				<tr>
					<td class="altbg1">
						��ţ�
					</td>
					<td class="altbg2">
						<input type="text" name="id" id="id" size="34" value="${sessionScope.newsObj.id }"  readonly="true" style="background: grey"/>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						���⣺
					</td>
					<td class="altbg2">
						<input type="text" name="title" id="title" size="34" value="${sessionScope.newsObj.title }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						���
					</td>
					<td class="altbg2" colspan="11">
						<label>
							<select name="catalog" id="catalog">
								<option value="1001">
									���ż���
								</option>
								<option value="1002">
									��˾���
								</option>
								<option value="1003">
									��˾�Ļ�
								</option>
								<option value="1004">
									��������
								</option>
								<option value="1005">
									��֧����
								</option>
								<option value="1006">
									��������
								</option>
								<option value="1007">
									ƽ̨����
								</option>
								<option value="1008">
									��ҵģʽ
								</option>
								<option value="1009">
									ϵͳ�ſ�
								</option>
								<option value="1010">
									�ն˲�Ʒ
								</option>
								<option value="1011">
									���Ͱ���
								</option>
								<option value="1012">
									ϵͳӦ��
								</option>
							</select>
						</label>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						ͼƬ��
					</td>
					<td class="altbg2" colspan="11">
						<input type="file" name="typeurl" id="typeurl" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						�������ݣ�
					</td>
					<td class="altbg2" colspan="11">
						<textarea rows="5" cols="60" name="content">${sessionScope.newsObj.content }</textarea>
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
