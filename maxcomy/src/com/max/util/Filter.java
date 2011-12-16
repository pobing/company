package com.max.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Filter extends HttpServlet implements javax.servlet.Filter{


	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest)arg0;
		HttpSession session=request.getSession();
		if(session.getAttribute("user")==null){
			((HttpServletResponse)arg1).sendRedirect("login.jsp");
			return;
		}
		arg2.doFilter(arg0, arg1);
	}
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("过滤器组件启动……");
		
	}

}
