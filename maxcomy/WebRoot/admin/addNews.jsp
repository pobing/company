<%@ page language="java" pageEncoding="gbk"%>
<html>
	<head>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>����Ա-���</title>
		<link rel="stylesheet" type="text/css" href="../css/style_admin.css">

		<script type="text/javascript">
		function fun_check_form(){
			if(document.form1.title.value==""){
				alert("���������ű�����Ϣ��");
				return false;
			}else if(document.form1.content.value==""){
				alert("�������������ݡ�");
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
						���������Ϣ
					</td>
				</tr>
				<tr>
					<td class="altbg1">
						���ű��⣺
					</td>
					<td class="altbg2" colspan="11">
						<input type="text" name="title" id="title" size="34">
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
								<option value="1013">
									�����Ŷ�
								</option>
								<option value="1014">
									�����Ŷ�
								</option>
								<option value="1015">��Ʒ����</option>
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
						<textarea rows="5" cols="60" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<td class="altbg1">
					</td>
					<td class="altbg2" colspan="11">
						<input type="submit" value="�ύ" name="B1" />
						&nbsp;
						<input type="reset" value="����" name="B2" />
					</td>
				</tr>
			</table>
		</form>
	</body>

</html>
