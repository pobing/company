<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="com.jspsmart.upload.SmartUpload"%>
<%@page import="com.max.util.Tools"%>
<%@page import="com.max.biz.ProductBIZ"%>
<%@page import="com.max.biz.NewsBIZ"%>

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
			String url = "upload/news/"; //应保证在根目录中有此目录的存在
			mySmartUpload.initialize(pageContext);//初始化

			mySmartUpload.upload();

			String saveurl = ""; //保存路径
			Date date = new Date();
			String cdate = Tools.dateTimeFormat(date);
			String id = mySmartUpload.getRequest().getParameter("id");
			String title = mySmartUpload.getRequest().getParameter("title");
			String catalog = mySmartUpload.getRequest().getParameter("catalog");
			String content = mySmartUpload.getRequest().getParameter("content");
			//	try {
			//	mySmartUpload.setAllowedFilesList("jpg,gif");
			//上载文件 
			//		mySmartUpload.upload();
			//	} catch (Exception e) {
			//
			/////		out
			//	.print("<script type='text/javascript'>alert('只允许上传.jpg和.gif类型图片文件。');location.href='/addNews.jsp';</script>");
			//}
			try {

				com.jspsmart.upload.File myFile = mySmartUpload.getFiles()
						.getFile(0);

				if (myFile.isMissing()) {

					out
							.print("<script type='text/javascript'>alert('请先选择要上传的文件');location.href='updateNews.jsp';</script>");

				}

				else {
					//String myFileName=myFile.getFileName(); //取得上载的文件的文件名
					ext = myFile.getFileExt(); //取得后缀名
					int file_size = myFile.getSize(); //取得文件的大小 

					if (file_size < file_size_max) {
						//更改文件名，取得当前上传时间的毫秒数值
						Calendar calendar = Calendar.getInstance();
						String filename = String.valueOf(calendar
								.getTimeInMillis());
						saveurl = application.getRealPath("/") + url;
						saveurl += filename + "." + ext; //保存路径
						myFile.saveAs(saveurl, SmartUpload.SAVE_PHYSICAL);
						//	out.print(saveurl);

						//String ret = "parent.HtmlEdit.focus();";
						//	ret += "var range = parent.HtmlEdit.document.selection.createRange();";
						//		ret += "range.pasteHTML('<img src=\""
						//		+ request.getContextPath() + "/admin/upload/"
						//		+ filename + "." + ext + "\">');";
						//	ret += "alert('上传成功！');";
						//	ret += "window.location='/addNews.jsp';";
						//	out.print("<script language=javascript>" + ret
						//			+ "</script>");

					}
				}
			} catch (Exception e) {
				out.print(e.toString());
			}
			NewsBIZ newsBiz = new NewsBIZ();
			int i = newsBiz.updateNews(new Object[] { catalog, title, content,
					saveurl, cdate, id });

			if (i > 0) {
				out
						.print("<script type='text/javascript'>alert('新闻编辑成功。');history.go(-1);</script>");
			} else {
				out
						.print("<script type='text/javascript'>alert('新闻编辑失败。');history.go(-1);</script>");
			}
		%>
	</body>
</html>
