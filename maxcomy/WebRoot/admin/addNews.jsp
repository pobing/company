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
				alert("请输入新闻标题信息。");
				return false;
			}else if(document.form1.content.value==""){
				alert("请输入新闻内容。");
				return false;
			}else{
				return true;
			}
		}
		
		</script>
	</head>

	<body>
		<form name="form1" action="uploadnews.jsp" method="post"
			enctype="multipart/form-data" onSubmit="return fun_check_form()">
			<table cellspacing="1" cellpadding="4" width="100%"
				class="tableborder" id="table3">
				<tr>
					<td colspan="12" class="header">
						添加新闻信息
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						新闻标题：
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="title" id="title" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						类别：
					</td>
					<td class="altbg2" colspan="11">
						<label>
							<select name="catalog" id="catalog">
								<option value="1001">
									新闻纪事
								</option>
								<option value="1002">
									公司简介
								</option>
								<option value="1003">
									公司文化
								</option>
								<option value="1004">
									资质荣誉
								</option>
								<option value="1005">
									分支机构
								</option>
								<option value="1006">
									技术优势
								</option>
								<option value="1007">
									平台优势
								</option>
								<option value="1008">
									商业模式
								</option>
								<option value="1009">
									系统概况
								</option>
								<option value="1010">
									终端产品
								</option>
								<option value="1011">
									典型案例
								</option>
								<option value="1012">
									系统应用
								</option>
								<option value="1013">
									商务团队
								</option>
								<option value="1014">
									技术团队
								</option>
								<option value="1015">产品服务</option>
							</select>
						</label>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						图片：
					</td>
					<td class="altbg2" colspan="11">
						<input type="file" name="typeurl" id="typeurl" size="34">
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						新闻内容：
					</td>
					<td class="altbg2" colspan="11">
						<textarea rows="5" cols="60" name="content"></textarea>
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
