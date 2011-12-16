package com.max.biz;

import java.util.List;

import com.max.dao.NewsDao;
import com.max.entity.News;

public class NewsBIZ {

	NewsDao newsDao = new NewsDao();

	/**
	 * 获取新闻列表
	 * 
	 * @return
	 */
	public List<News> getList() {

		return newsDao.getList();

	}
	
	/**
	 * 获取指定新闻
	 * 
	 * @param obj
	 * @return
	 */
	public News getNewsById(Object[] obj) {
		return newsDao.getNewsById(obj);
	}

	/**
	 * 添加新闻
	 */

	public int addNews(Object[] obj) {
		return newsDao.addNews(obj);
	}

	/**
	 * 删除指定新闻
	 * 
	 * @param obj
	 * @return
	 */
	public int delNews(Object[] obj) {
		return newsDao.delNews(obj);
	}

	/**
	 * 更新用户信息
	 * 
	 * @param obj
	 * @return
	 */
	public int updateNews(Object[] obj) {
		return newsDao.updateNews(obj);
	}
	/**
	 * 
	 */
	public List<News> getNewsByCatalog(Object[] obj) {
		
		return newsDao.getNewsByCatalog(obj);
		
		
	}
}
