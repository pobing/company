package com.max.util;



import java.sql.Date;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

public class ParamUtil
{

	public ParamUtil()
	{
	}

	public static String getParameter(HttpServletRequest request, String paramName)
	{
		String temp = request.getParameter(paramName);
		if (temp != null && !temp.equals(""))
			return temp;
		else
			return null;
	}

	public static String getParameter(HttpServletRequest request, String paramName, boolean emptyStringsOK)
	{
		String temp = request.getParameter(paramName);
		if (emptyStringsOK)
		{
			if (temp != null)
				return temp;
			else
				return null;
		} else
		{
			return getParameter(request, paramName);
		}
	}

	public static boolean getBooleanParameter(HttpServletRequest request, String paramName)
	{
		String temp = request.getParameter(paramName);
		return temp != null && temp.equals("true");
	}

	public static int getIntParameter(HttpServletRequest request, String paramName, int defaultNum)
	{
		String temp = request.getParameter(paramName);
		if (temp != null && !temp.equals(""))
		{
			int num = defaultNum;
			try
			{
				num = Integer.parseInt(temp);
			}
			catch (Exception ignored) { }
			return num;
		} else
		{
			return defaultNum;
		}
	}

	public static long getLongParameter(HttpServletRequest request, String paramName, long defaultNum)
	{
		String temp = request.getParameter(paramName);
		if (temp != null && !temp.equals(""))
		{
			long num = defaultNum;
			try
			{
				num = Long.parseLong(temp);
			}
			catch (Exception ignored) { }
			return num;
		} else
		{
			return defaultNum;
		}
	}

	public static Date getDateParameter(HttpServletRequest request, String paramName)
	{
		String temp = request.getParameter(paramName);
		if (temp != null && !temp.equals(""))
		{
			Date date = null;
			try
			{
				date = Date.valueOf(temp);
			}
			catch (Exception ignored) { }
			return date;
		} else
		{
			return null;
		}
	}

	public static double getDoubleParameter(HttpServletRequest request, String paramName, double defaultNum)
	{
		String temp = request.getParameter(paramName);
		if (temp != null && !temp.equals(""))
		{
			double num = defaultNum;
			try
			{
				num = Double.parseDouble(temp);
			}
			catch (Exception ignored) { }
			return num;
		} else
		{
			return defaultNum;
		}
	}

	public static boolean getCheckboxParameter(HttpServletRequest request, String paramName)
	{
		String temp = request.getParameter(paramName);
		return temp != null && temp.equals("on");
	}

	public static String getAttribute(HttpServletRequest request, String attribName)
	{
		String temp = (String)request.getAttribute(attribName);
		if (temp != null && !temp.equals(""))
			return temp;
		else
			return null;
	}

	public static boolean getBooleanAttribute(HttpServletRequest request, String attribName)
	{
		String temp = (String)request.getAttribute(attribName);
		return temp != null && temp.equals("true");
	}

	public static int getIntAttribute(HttpServletRequest request, String attribName, int defaultNum)
	{
		String temp = (String)request.getAttribute(attribName);
		if (temp != null && !temp.equals(""))
		{
			int num = defaultNum;
			try
			{
				num = Integer.parseInt(temp);
			}
			catch (Exception ignored) { }
			return num;
		} else
		{
			return defaultNum;
		}
	}
}