package com.max.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.max.biz.NewsBIZ;
import com.max.entity.News;

public class toNewsEdit extends HttpServlet {

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

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;chrset=gbk");
		PrintWriter out = response.getWriter();
		String id=request.getParameter("id");
		NewsBIZ newsBiz=new NewsBIZ();
		News newsObj=newsBiz.getNewsById(new Object[]{id});
		if(newsObj!=null){
			HttpSession session=request.getSession();
			session.setAttribute("newsObj", newsObj);
			response.sendRedirect("admin/updateNews.jsp");
			
		}else{
			
			out
			.print("<script type='text/javascript'>alert('±‡º≠≥ˆ¥Ì£¨«Î…‘∫Û‘Ÿ ‘!');location.href='admin/managePro.jsp'</script>");
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
