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

public class adminLog extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	private String rand;

	public String getRand() {
		return rand;
	}

	public void setRand(String rand) {
		this.rand = rand;
	}

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

		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String name = request.getParameter("name");
		String pass = MD5.MD5Encode(request.getParameter("pass"));
		UserBIZ userBiz = new UserBIZ();

		Users user = userBiz.validUser(new Object[] { name ,pass});
		String rand=(String)session.getAttribute("rand");

		try {
			if (!rand.equalsIgnoreCase(request.getParameter("rand"))) {
				//request.getRequestDispatcher("admin/logError.jsp").forward(request,response);
				out
				.print("<script type='text/javascript'>alert('验证码错误！');history.go(-1);</script>");
			} else {
				// 根据用户名验证 只有用户名和密码正确才可登录

//				if (name.equals(user.getName()) && pass.equals(user.getPass())) {
//					session.setAttribute("currentUser", user);
//					response.sendRedirect("admin/index.jsp");
//				} else {
//					out
//					.print("<script type='text/javascript'>alert('用户名或密码错误！');history.go(-1);</script>");
//				}
				
				if(user!=null){
					session.setAttribute("currentUser", user);
				response.sendRedirect("admin/index.jsp");
				}else {
				out
					.print("<script type='text/javascript'>alert('用户名或密码错误！');history.go(-1);</script>");
			}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("登录名或密码错误！！！");
			// 登录名或密码错误時轉到登錄錯誤頁面
		//	request.getRequestDispatcher("admin/logError.jsp").forward(request,	response);
			out
			.print("<script type='text/javascript'>alert('用户名或密码错误！');history.go(-1);</script>");

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
