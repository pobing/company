<%@ page language="java"  pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>商品信息更新</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">
		
		<script type="text/javascript">
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
		var rpwd = document.form1.rpass.value;
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
		<form name="form1" action="updatePro_do.jsp" method="post" enctype="multipart/form-data">
	
			<table cellspacing="1" cellpadding="4" width="100%"  align="left"
				class="tableborder" id="table3">
				<tr>
					<td colspan="12" class="header"> 
						商品信息更新<br></td>
				</tr>
				<tr>
					<td class="altbg1">
						商品编号：
					</td>
					<td class="altbg2">
						<input type="text" name="pronum" id="pronum" size="34" value="${sessionScope.selPro.id }"  readonly="true" style="background: grey"/>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品名称：
					</td>
					<td class="altbg2">
						<input type="text" name="title" id="title" size="34" value="${sessionScope.selPro.name }" />
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品类型：
					</td>
					<td class="altbg2">
							<select name="type" id="type">
								<option value="1001">
									电视电脑一体机
								</option>
								<option value="1002">
									电脑一体机
								</option>
								<option value="1003">
									显示器
								</option>
								<option value="1004">
									小主机
								</option>
								<option value="1005">
									键盘
								</option>
								<option value="1006">
									鼠标
								</option>
							</select>
					</td>
				</tr>	
				<tr>
					<td class="altbg1">
						商品图片：
					</td>
					<td class="altbg2">
						<input type="file" name="picture" id ="picture" size="34" value="${sessionScope.selPro.picture }" />
					</td>
				</tr>
					<tr>
					<td class="altbg1">
						商品描述：
					</td>
					<td class="altbg2" colspan="11">
						<textarea rows="5" cols="60" name="desc" >${sessionScope.selPro.content }</textarea>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2">
						<input type="submit" value="提交" name="B1" />
						&nbsp;
						<input type="reset" value="重置" name="B2" />
					</td>
				</tr>

			</table>
	
		</form>
	</body>

</html>
