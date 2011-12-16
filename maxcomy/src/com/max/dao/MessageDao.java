package com.max.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.max.apimpl.ApiImpl;
import com.max.entity.Message;

public class MessageDao {
	ApiImpl impl=new ApiImpl();
	public List<Message> getList() {

		String sql = "select * from message ";
		List<Message> list = new ArrayList<Message>();
		Message msg = null;
		ResultSet rs = impl.excuteQuery(sql, null);
		try {
			while (rs.next()) {
				msg = new Message();
				msg.setId(rs.getInt("id"));
				msg.setNickname(rs.getString("nickname"));
				msg.setPhone(rs.getString("phone"));
				msg.setContent(rs.getString("content"));
				msg.setEmail(rs.getString("email"));
				msg.setCdate(rs.getDate("cdate"));
				list.add(msg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 获取指定新闻
	 * 
	 * @param obj
	 * @return
	 */
	public Message getMessageById(Object[] obj) {

		String sql = "select * from message where id=? ";

		Message msg = null;
		ResultSet rs = impl.excuteQuery(sql, obj);
		try {
			if (rs.next()) {
				msg = new Message();
				msg.setId(rs.getInt("id"));
				msg.setNickname(rs.getString("nickname"));
				msg.setPhone(rs.getString("phone"));
				msg.setContent(rs.getString("content"));
				msg.setEmail(rs.getString("email"));
				msg.setCdate(rs.getDate("cdate"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return msg;

	}

	

	/**
	 * 添加新闻
	 */

	public int addMsg(Object[] obj) {
		String sql = "insert into message(nickname,phone,email,content,cdate)values (?,?,?,?,?)";
		return impl.save(sql, obj);

	}

	/**
	 * 删除指定新闻
	 * 
	 * @param obj
	 * @return
	 */
	public int delMsg(Object[] obj) {
		String sql = "delete from message where id=? ";
		return impl.delete(sql, obj);
	}

}
