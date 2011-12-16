package com.max.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.max.apimpl.ApiImpl;
import com.max.entity.Users;

public class UserDao {
	ApiImpl impl = new ApiImpl();
	private final int TOP = 7; // 定义首页上显示新闻的记录数

	public static final int PAGE_NUM = 10;// 定义新闻列表页面显示新闻行数

	

public int getUserCount(){
	  int pageCount=0;
	  String sql="select count(*) from users ";
	  ResultSet rs=impl.excuteQuery(sql, null);
	  
	  try {
		if(rs.next()){
			  pageCount=rs.getInt(1);
		  }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  return pageCount;
	
}
	public List<Users> getUserList(String where) {
		if (where.length() == 0 || where == null) {
			where = "1=1";
		}
		String sql = "select * from usrs where " + where;
		ResultSet rs = impl.excuteQuery(sql, null);
		Users user = null;
		List<Users> list = new ArrayList<Users>();
		try {
			while (rs.next()) {
				user = new Users();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPass(rs.getString("pass"));
				user.setSex(rs.getInt("sex"));
				user.setStatus(rs.getInt("status"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 用户登录验证 ：用户名和密码
	 * 
	 * @param obj
	 * @return
	 */
	public Users validUser(Object[] obj) {
		String sql = "select * from users where name=? and pass=?";
		ResultSet rs = impl.excuteQuery(sql, obj);
		Users user = null;
		try {
			if (rs.next()) {

				user = new Users();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPass(rs.getString("pass"));
				user.setSex(rs.getInt("sex"));
				user.setStatus(rs.getInt("status"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	/**
	 * 查找用户名是否存在
	 * 
	 * @return
	 */
	public boolean findUser(Object[] obj) {
		String sql = "select * from users where name=? ";
		ResultSet rs = impl.excuteQuery(sql, obj);
		try {
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;

	}

	/**
	 * 获取用户列表
	 * 
	 * @return
	 */
	public List<Users> userList() {
		List<Users> list = new ArrayList<Users>();
		String sql = "select * from users";
		ResultSet rs = impl.excuteQuery(sql, null);
		Users user = null;
		try {
			while (rs.next()) {
				user = new Users();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPass(rs.getString("pass"));
				user.setSex(rs.getInt("sex"));
				user.setStatus(rs.getInt("status"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public Users getOne(Object[] obj) {
		String sql = "select * from users where id=? ";
		ResultSet rs = impl.excuteQuery(sql, obj);
		Users user = null;
		try {
			if (rs.next()) {

				user = new Users();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setPass(rs.getString("pass"));
				user.setSex(rs.getInt("sex"));
				user.setStatus(rs.getInt("status"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return user;
	}

	/**
	 * 添加新用户
	 */

	public int addUser(Object[] obj) {
		String sql = "insert into users(name,pass,sex,status)values (?,?,?,?)";
		return impl.save(sql, obj);

	}

	/**
	 * 删除指定用户信息
	 * 
	 * @param obj
	 * @return
	 */
	public int delUser(Object[] obj) {
		String sql = "delete from users where id=? ";
		return impl.delete(sql, obj);
	}

	/**
	 * 更新用户信息
	 * 
	 * @param obj
	 * @return
	 */
	public int updateUser(Object[] obj) {
		String sql = "update users set name=?,pass=?,sex=?,status=? where id=?";
		return impl.update(sql, obj);
	}
}
