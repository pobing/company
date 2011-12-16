package com.max.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.max.biz.UserBIZ;
import com.max.entity.Users;
import com.max.util.MD5;

public class pageLog extends HttpServlet {

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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String pass =MD5.MD5Encode(request.getParameter("pass"));
		UserBIZ userBiz = new UserBIZ();

		Users user = userBiz.validUser(new Object[] { name ,pass});
		try {

			// 根据用户名验证 只有用户名和密码正确才可登录

			if (user!=null) {
				HttpSession session = request.getSession();
				session.setAttribute("logUser", user);
			 response.sendRedirect("Chinese/index.jsp");
			} else {
				out
						.print("<script type='text/javascript'>alert('用户名或密码错误！');history.go(-1);</script>");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("登录名或密码错误！！！");
			// 登录名或密码错误時轉到登錄錯誤頁面
			// request.getRequestDispatcher("admin/logError.jsp").forward(request,
			// response);
			out
					.print("<script type='text/javascript'>alert('用户名或密码错误！');history.go(-1);</script>");

		}
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
