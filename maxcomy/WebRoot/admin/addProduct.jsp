<%@ page language="java" pageEncoding="gbk"%>

<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>管理员-添加</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">

		<script type="text/javascript">
		function fun_check_form(){
			if(document.form1.title.value==""){
				alert("请输入商品标题信息。");
				return false;
			}
			else{
				return true;
			}
		}
		
		</script>
	</head>

	<body>
		<form name="form1" action="uploadPro.jsp" method="post"
			enctype="multipart/form-data" onSubmit="return fun_check_form()">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">
				<tr>
					<td colspan="12" class="header">
						添加商品信息
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品名称：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="title" id="title" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品类别：
					</td>
					<td class="altbg2" colspan="11">
						<label>
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
						</label>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品图片：
					</td>
					<td class="altbg2" colspan="11">
						<input type="file" name="picture" id="picture" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						商品描述：
					</td>
					<td class="altbg2" colspan="11">
						<textarea rows="5" cols="60" name="desc"></textarea>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<input type="submit" value="提交" name="B1" />
						&nbsp;
						<input type="reset" value="重置" name="B2" />
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>
