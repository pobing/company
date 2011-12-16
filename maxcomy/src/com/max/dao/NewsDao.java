package com.max.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.max.apimpl.ApiImpl;
import com.max.entity.News;
import com.max.entity.Users;

public class NewsDao {
	ApiImpl impl = new ApiImpl();

	/**
	 * ��ȡ�����б�
	 * 
	 * @return
	 */
	public List<News> getList() {

		String sql = "select * from news ";
		List<News> list = new ArrayList<News>();
		News news = null;
		ResultSet rs = impl.excuteQuery(sql, null);
		try {
			while (rs.next()) {
				news = new News();
				news.setId(rs.getInt("id"));
				news.setCatalog(rs.getString("catalog"));
				news.setCdate(rs.getDate("cdate"));
				news.setContent(rs.getString("content"));
				news.setTitle(rs.getString("title"));
				news.setTypeurl(rs.getString("typeurl"));
				list.add(news);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * ��ȡָ������
	 * 
	 * @param obj
	 * @return
	 */
	public News getNewsById(Object[] obj) {

		String sql = "select * from news where id=? order by id  desc";

		News news = null;
		ResultSet rs = impl.excuteQuery(sql, obj);
		try {
			if (rs.next()) {
				news = new News();
				news.setId(rs.getInt("id"));
				news.setCatalog(rs.getString("catalog"));
				news.setCdate(rs.getDate("cdate"));
				news.setContent(rs.getString("content"));
				news.setTitle(rs.getString("title"));
				news.setTypeurl(rs.getString("typeurl"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return news;

	}

	/**
	 * ������������ȡ��Ϣ
	 * 
	 * @param obj
	 * @return
	 */
	public List<News> getNewsByCatalog(Object[] obj) {

		String sql = "select * from news where catalog=? order by id desc";
		List<News> list = new ArrayList<News>();
		News news = null;
		ResultSet rs = impl.excuteQuery(sql, obj);
		try {
			while(rs.next()) {
				news = new News();
				news.setId(rs.getInt("id"));
				news.setCatalog(rs.getString("catalog"));
				news.setCdate(rs.getDate("cdate"));
				news.setContent(rs.getString("content"));
				news.setTitle(rs.getString("title"));
				news.setTypeurl(rs.getString("typeurl"));
				list.add(news);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * �������
	 */

	public int addNews(Object[] obj) {
		String sql = "insert into news(catalog,title,content,typeurl,cdate)values (?,?,?,?,?)";
		return impl.save(sql, obj);

	}

	/**
	 * ɾ��ָ������
	 * 
	 * @param obj
	 * @return
	 */
	public int delNews(Object[] obj) {
		String sql = "delete from news where id=? ";
		return impl.delete(sql, obj);
	}

	/**
	 * �����û���Ϣ
	 * 
	 * @param obj
	 * @return
	 */
	public int updateNews(Object[] obj) {
		String sql = "update news set catalog=?,title=?,content=?,typeurl=? ,cdate=? where id=?";
		return impl.update(sql, obj);
	}

}
