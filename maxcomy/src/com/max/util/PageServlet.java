package com.max.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PageServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("gbk");
		response.setCharacterEncoding("gbk");
		Pager pager = new Pager();
		String curpager= request.getParameter("curpager");
		pager.setPagesize(5);
		pager.setSum(357);
		pager.setCurpage(Integer.parseInt(curpager));
		request.setAttribute("pager", pager);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

}
