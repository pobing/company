<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page import="com.max.util.Tools"%>
<%@page import="com.max.biz.ProductBIZ"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'uploadnews.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<%
			SmartUpload mySmartUpload = new SmartUpload();
			long file_size_max = 4000000;
			String fileName2 = "", ext = "", testvar = "";
			String url = "upload/product/"; //Ӧ��֤�ڸ�Ŀ¼���д�Ŀ¼�Ĵ���
			mySmartUpload.initialize(pageContext);//��ʼ��

			mySmartUpload.upload();

			String saveurl = ""; //����·��
			

			String title = mySmartUpload.getRequest().getParameter("title");
			String type = mySmartUpload.getRequest().getParameter("type");
			String desc = mySmartUpload.getRequest().getParameter("desc");
			//	try {
			//	mySmartUpload.setAllowedFilesList("jpg,gif");
			//�����ļ� 
			//		mySmartUpload.upload();
			//	} catch (Exception e) {
			//
			/////		out
			//	.print("<script type='text/javascript'>alert('ֻ�����ϴ�.jpg��.gif����ͼƬ�ļ���');location.href='/addNews.jsp';</script>");
			//}
			try {

				com.jspsmart.upload.File myFile = mySmartUpload.getFiles()
						.getFile(0);

				if (myFile.isMissing()) {

					out
							.print("<script type='text/javascript'>alert('����ѡ��Ҫ�ϴ����ļ�');location.href='/addNews.jsp';</script>");

				}

				else {
					//String myFileName=myFile.getFileName(); //ȡ�����ص��ļ����ļ���
					ext = myFile.getFileExt(); //ȡ�ú�׺��
					int file_size = myFile.getSize(); //ȡ���ļ��Ĵ�С 

					if (file_size < file_size_max) {
						//�����ļ�����ȡ�õ�ǰ�ϴ�ʱ��ĺ�����ֵ
						Calendar calendar = Calendar.getInstance();
						String filename = String.valueOf(calendar
								.getTimeInMillis());
						saveurl = application.getRealPath("/") + url;
						saveurl += filename + "." + ext; //����·��
						myFile.saveAs(saveurl, SmartUpload.SAVE_PHYSICAL);
						//	out.print(saveurl);

						//String ret = "parent.HtmlEdit.focus();";
						//	ret += "var range = parent.HtmlEdit.document.selection.createRange();";
						//		ret += "range.pasteHTML('<img src=\""
						//		+ request.getContextPath() + "/admin/upload/"
						//		+ filename + "." + ext + "\">');";
						//	ret += "alert('�ϴ��ɹ���');";
						//	ret += "window.location='/addNews.jsp';";
						//	out.print("<script language=javascript>" + ret
						//			+ "</script>");

					}
				}
			} catch (Exception e) {
				out.print(e.toString());
			}

			ProductBIZ  proBiz = new ProductBIZ();
			int i=proBiz.addProduct(new Object[]{title,type,saveurl,desc});
			
			if (i > 0) {
				out
						.print("<script type='text/javascript'>alert('��Ʒ��ӳɹ���');history.go(-1);</script>");
			} else {
				out
						.print("<script type='text/javascript'>alert('��Ʒ���ʧ�ܡ�');history.go(-1);</script>");
			}
		%>
	</body>
</html>
