package com.max.util;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.max.dao.BaseDao;





public class Controller extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the POST method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}
	public void init() throws ServletException {
		// Put your code here
		System.out.println("��������ʼ��������");
		System.out.println("��ȡ���ݿ�������Ϣ����");
		Properties pro=new Properties();
		try {
			pro.load(this.getClass().getResourceAsStream("/db.properties"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BaseDao.driver=pro.getProperty("driver");
		BaseDao.url=pro.getProperty("url");
		BaseDao.user=pro.getProperty("user");
		BaseDao.pass=pro.getProperty("pass");
		System.out.println("driver:"+BaseDao.driver+"url:"+BaseDao.url);
		System.out.println("���ݿ�������Ϣ��ȡ���!");
	}
	
}
