package com.max.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.max.biz.UserBIZ;

public class delUser extends HttpServlet {

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
String id = request.getParameter("id");
UserBIZ userBiz = new UserBIZ();
int i = userBiz.delUser(new Object[] { id });
if (i > 0) {
	out
			.print("<script type='text/javascript'>alert('用户删除成功!');location.href='admin/showUserList.jsp'</script>");
} else {
	out
			.print("<script type='text/javascript'>alert('用户删除失败!');history.go(-1);</script>");
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
