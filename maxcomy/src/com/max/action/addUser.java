package com.max.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.max.biz.UserBIZ;
import com.max.util.MD5;

public class addUser extends HttpServlet {

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

// Users ur=new Users();
// ur.setPass(MD5.MD5Encode(request.getParameter("pass")));
String username = request.getParameter("name");
String password = MD5.MD5Encode(request.getParameter("pass"));

int sex = Integer.parseInt(request.getParameter("gender"));
int stat = Integer.parseInt(request.getParameter("stat"));
UserBIZ userBiz = new UserBIZ();
if (userBiz.findUser(new Object[] { username })) {
	out
			.print("<script type='text/javascript'>alert('用户名已存在，请换个用户名！');history.go(-1);</script>");
} else {
	int count = userBiz.addUser(new Object[] { username,
			password, sex, stat });
	if (count > 0)
		out
				.print("<script type='text/javascript'>alert('成功添加一个管理员。');history.go(-1);</script>");
	else
		out
				.print("<script type='text/javascript'>alert('添加失败。');history.go(-1);</script>");
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
