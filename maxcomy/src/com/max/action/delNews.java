package com.max.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.max.biz.NewsBIZ;

public class delNews extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

doPost(request, response);
}


public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

response.setContentType("text/html;charset=gbk");
PrintWriter out = response.getWriter();
String id = request.getParameter("id");
NewsBIZ newsBiz = new  NewsBIZ();
int i = newsBiz.delNews(new Object[] { id });
if (i > 0) {
	out
			.print("<script type='text/javascript'>alert('新闻删除成功!');location.href='admin/manageNews.jsp'</script>");
} else {
	out
			.print("<script type='text/javascript'>alert('新闻删除失败!');history.go(-1);</script>");
}
}
	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
