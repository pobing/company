package com.max.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.print.Doc;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.max.biz.MessageBIZ;
import com.max.util.Tools;

public class addMsg extends HttpServlet {

	private String rand;
	public String getRand() {
		return rand;
	}

	public void setRand(String rand) {
		this.rand = rand;
	}



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
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String mail=request.getParameter("email");
		String content=request.getParameter("content");
		Date date=new Date();
		String  cdate=Tools.dateTimeFormat(date);
		HttpSession session=request.getSession();
		String rand=(String)session.getAttribute("rand");
		MessageBIZ msgBiz=new MessageBIZ();
		try {
			if (!rand.equalsIgnoreCase(request.getParameter("rand"))) {
				//request.getRequestDispatcher("admin/logError.jsp").forward(request,response);
				out
				.print("<script type='text/javascript'>alert('验证码错误！');history.go(-1);</script>");
			} else {
				// 根据用户名验证 只有用户名和密码正确才可登录
	
				int i=msgBiz.addMsg(new Object[]{name,phone,mail,content,cdate});
				if (i > 0)
					
					out
							.print("<script type='text/javascript'>alert('谢谢，你的留言已成功提交！');location.href='Chinese/zxly.jsp'</script>");
			
				else
					out
							.print("<script type='text/javascript'>alert('对不起，你的留言提交失败！');history.go(-1);</script>");
				}
				
			}
		 catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("页面出错，请稍后再试！！！");
			// 登录名或密码错误時轉到登錄錯誤頁面
		//	request.getRequestDispatcher("admin/logError.jsp").forward(request,	response);
			out
			.print("<script type='text/javascript'>alert('页面出错，请稍后再试！！！！');history.go(-1);</script>");

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
