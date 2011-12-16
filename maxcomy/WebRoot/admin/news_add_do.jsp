<!--<%@ page language="java" pageEncoding="gb2312"%>
<%@ page import="com.jspsmart.upload.*"%>
<%@ page import="java.text.*"%>
<%@page import="com.maxcom.orm.News"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="com.maxcom.util.BaseDAOImpl"%>
<%@page import="java.util.*" %>
<%@page import="com.maxcom.util.ParamUtil" %>
<%@page import="org.springframework.context.support.*" %>
<%@page import="sun.jdbc.odbc.ee.DataSource" %>
<%@page import="com.maxcom.util.BaseDAO"%>
<%@page import="com.maxcom.orm.Newscolumns"%>
<%@page import="com.maxcom.util.*" %>
 
 
<%
//String uploadPath ="/upload/pic/";
//String normal = "upload/pic/normal/"+DateUtil.getByFormat("yyyyMMdd");
//String small  = "upload/pic/small/" +DateUtil.getByFormat("yyyyMMdd");
//String ispic = "0"; //0为普通，1 为图片新闻
//News news = new News();
//ServletContext context = request.getSession().getServletContext();
//ApplicationContext ctx = WebApplicationContextUtils.getWebApplicationContext(context); 
//BaseDAOImpl ds = (BaseDAOImpl)ctx.getBean("dao");
//		SmartUpload myupload = new SmartUpload();		
	//	myupload.initialize(pageContext);		
//		myupload.setMaxFileSize(1024*1024);		
//		myupload.setTotalMaxFileSize(5*1024*1024);		
		
		// myupload.setAllowedFilesList("doc,txt,jpg,gif");		 
		
		// myupload.setDeniedFilesList("exe,bat,jsp,htm,html,,");
		 

		
//		try{			
		
			//myupload.upload();			
	
		//	int count = myupload.getFiles().getCount();			
			
		//	Request myRequest = myupload.getRequest();		
		//	String rndFilename,fileExtName,fileName,filePathName,memo;
			//Date dt = null; 
			//SimpleDateFormat fmt = new SimpleDateFormat("yyyyMMddHHmmssSSS"); 
			
			// 逐一提取上传文件信息，同时可保存文件	
		//	for (int i=0;i<count;i++)
			//{
				//　取得一个上传文件
			//	File file = myupload.getFiles().getFile(i);				
				// 若文件不存在则继续
			//	if (file.isMissing())
			//	{
			//	 ispic = "0";
			//	 continue;	
				//}else{
						  //上传目录。normal为原图，small为缩略图

					
				//	java.io.File normal_mulu = new java.io.File(request.getRealPath("/")+normal);
				//	java.io.File small_mulu = new java.io.File(request.getRealPath("/") + small );
				//	if(!normal_mulu.exists()){
					//	normal_mulu.mkdir();
					//}
				//	if(!small_mulu.exists()){
				//		small_mulu.mkdir();
				//	}
				
			//	}	
				// 取得文件名
			//	fileName = file.getFileName();
				// 取得文件全名
			//	filePathName = file.getFilePathName();
				// 取得文件扩展名
			//	fileExtName = file.getFileExt();
				// 取得随机文件名
			//	dt = new Date(System.currentTimeMillis()); 
			//	Thread.sleep(100);
			//	rndFilename= fmt.format(dt)+"."+fileExtName;			
			
	       //     news.setPicture(rndFilename);
				//file.saveAs(uploadPath + rndFilename,myupload.SAVE_VIRTUAL);
				
				// 将文件另存,以WEB应用的根目录作为上传文件的根目录
				//String f_normal=normal+ "/"+ rndFilename;
				//String f_small=small+ "/"+  rndFilename;	
				
			//	file.saveAs(f_normal,myupload.SAVE_VIRTUAL);
			//	file.saveAs(f_small,myupload.SAVE_VIRTUAL);
				
			//	f_normal = request.getRealPath("/")+normal.replace('/','\\')+"\\"+rndFilename;
			//	f_small =  request.getRealPath("/")+small.replace('/','\\')+"\\"+rndFilename;
				//原比例压缩。
				//ImageUtils.createSmallPhoto1(f_normal,f_small);
				//制定大小
			//	ImageUtils.createSmallPhoto(f_normal,f_small);			
				
		//		ispic = "1";
		//	}
		//	if(ispic.equals("0")){
		//		news.setIsPicNews(0);
		//	}else{
			//	news.setIsPicNews(1);
		//	}
		//	news.setTitle(myRequest.getParameter("title"));
		//	news.setCdate(new Date());
		//    news.setColumnsId(myRequest.getParameter("clumnsid"));
		//    news.setContent(Tools.escape(myRequest.getParameter("content").trim()));
		//    news.setEditor("maxcom.com");
		//    news.setStatus(1);
			
		 //   try{
			//    ds.saveOrUpdate(news);
			//    out.println("<script>alert('操作成功！');</script>");		    	
			//	response.setHeader("refresh","0.1;URL=news_add.jsp") ;
			//	}catch(Exception ex){
			//		out.println("<script>alert('操作失败！');history.go(-1);</script>");
			//	}
			
	//	}catch(Exception ex){
		
		//	out.println("错误原因：<br>"+ex.toString());
	//	}
	%>        
 -->