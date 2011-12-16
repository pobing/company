package com.max.biz;

import java.util.List;

import com.max.dao.NewsDao;
import com.max.entity.News;

public class NewsBIZ {

	NewsDao newsDao = new NewsDao();

	/**
	 * ��ȡ�����б�
	 * 
	 * @return
	 */
	public List<News> getList() {

		return newsDao.getList();

	}
	
	/**
	 * ��ȡָ������
	 * 
	 * @param obj
	 * @return
	 */
	public News getNewsById(Object[] obj) {
		return newsDao.getNewsById(obj);
	}

	/**
	 * �������
	 */

	public int addNews(Object[] obj) {
		return newsDao.addNews(obj);
	}

	/**
	 * ɾ��ָ������
	 * 
	 * @param obj
	 * @return
	 */
	public int delNews(Object[] obj) {
		return newsDao.delNews(obj);
	}

	/**
	 * �����û���Ϣ
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
