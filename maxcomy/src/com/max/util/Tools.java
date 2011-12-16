package com.max.util;

import java.text.SimpleDateFormat;
import java.util.*;

public class Tools {
	public static String dateTimeFormat(Date date) {
		if (date == null) {
			return "";
		}
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return format.format(date);
	}
	  public  String getDate()
	    {
	        Calendar cal=Calendar.getInstance();//-0代表0天前这个时候的时间
	        cal.add(Calendar.DAY_OF_YEAR,-0);
	        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	        String nowtime=sdf.format(cal.getTime());
	        return nowtime;
	    }

}
