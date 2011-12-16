package com.max.dao;
import java.sql.*;

public class BaseDao {

	public static String url;

	public static  String driver;

	public static  String user;

	public static String pass;

	private Connection con = null;

	private PreparedStatement pstmt = null;

	private ResultSet rs = null;

	public void open() {
		if (con == null) {
			try {
				Class.forName(driver);
				con = DriverManager.getConnection(url, user, pass);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public int excuteUpdate(String sql, Object[] obj) {
		open();
		int result = -1;
		try {
			pstmt = con.prepareStatement(sql);
			if (obj != null && obj.length>0) {
				for (int i = 0; i < obj.length; i++) {
					pstmt.setObject(i + 1, obj[i]);
				}
			}
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

	public ResultSet excuteQuery(String sql, Object[] obj)  {
		open();
		try {
			pstmt = con.prepareStatement(sql);
			if (obj != null && obj.length>0) {
				for (int i = 0; i < obj.length; i++) {
					pstmt.setObject(i + 1, obj[i]);
				}

			}
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}
	 public ResultSet query(String sql,int begin,int size) throws Exception{  
		 String s=" limit " + begin + "," +size;  
		 sql=sql + s; 
		 rs=pstmt.executeQuery(sql);  
		 return rs;       }
	public void close() {
		try {
			if (con != null && !con.isClosed()) {
				con.close();
				con = null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
