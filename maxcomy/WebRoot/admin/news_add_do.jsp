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
//String ispic = "0"; //0Ϊ��ͨ��1 ΪͼƬ����
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
			
			// ��һ��ȡ�ϴ��ļ���Ϣ��ͬʱ�ɱ����ļ�	
		//	for (int i=0;i<count;i++)
			//{
				//��ȡ��һ���ϴ��ļ�
			//	File file = myupload.getFiles().getFile(i);				
				// ���ļ������������
			//	if (file.isMissing())
			//	{
			//	 ispic = "0";
			//	 continue;	
				//}else{
						  //�ϴ�Ŀ¼��normalΪԭͼ��smallΪ����ͼ

					
				//	java.io.File normal_mulu = new java.io.File(request.getRealPath("/")+normal);
				//	java.io.File small_mulu = new java.io.File(request.getRealPath("/") + small );
				//	if(!normal_mulu.exists()){
					//	normal_mulu.mkdir();
					//}
				//	if(!small_mulu.exists()){
				//		small_mulu.mkdir();
				//	}
				
			//	}	
				// ȡ���ļ���
			//	fileName = file.getFileName();
				// ȡ���ļ�ȫ��
			//	filePathName = file.getFilePathName();
				// ȡ���ļ���չ��
			//	fileExtName = file.getFileExt();
				// ȡ������ļ���
			//	dt = new Date(System.currentTimeMillis()); 
			//	Thread.sleep(100);
			//	rndFilename= fmt.format(dt)+"."+fileExtName;			
			
	       //     news.setPicture(rndFilename);
				//file.saveAs(uploadPath + rndFilename,myupload.SAVE_VIRTUAL);
				
				// ���ļ����,��WEBӦ�õĸ�Ŀ¼��Ϊ�ϴ��ļ��ĸ�Ŀ¼
				//String f_normal=normal+ "/"+ rndFilename;
				//String f_small=small+ "/"+  rndFilename;	
				
			//	file.saveAs(f_normal,myupload.SAVE_VIRTUAL);
			//	file.saveAs(f_small,myupload.SAVE_VIRTUAL);
				
			//	f_normal = request.getRealPath("/")+normal.replace('/','\\')+"\\"+rndFilename;
			//	f_small =  request.getRealPath("/")+small.replace('/','\\')+"\\"+rndFilename;
				//ԭ����ѹ����
				//ImageUtils.createSmallPhoto1(f_normal,f_small);
				//�ƶ���С
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
			//    out.println("<script>alert('�����ɹ���');</script>");		    	
			//	response.setHeader("refresh","0.1;URL=news_add.jsp") ;
			//	}catch(Exception ex){
			//		out.println("<script>alert('����ʧ�ܣ�');history.go(-1);</script>");
			//	}
			
	//	}catch(Exception ex){
		
		//	out.println("����ԭ��<br>"+ex.toString());
	//	}
	%>        
 -->