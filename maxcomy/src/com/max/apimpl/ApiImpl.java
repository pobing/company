package com.max.apimpl;

import java.sql.ResultSet;

import com.max.api.API;
import com.max.dao.BaseDao;

public class ApiImpl implements API {

	BaseDao baseDao=new BaseDao();
	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

	public int delete(String sql, Object[] obj) {
		// TODO Auto-generated method stub
		return baseDao.excuteUpdate(sql, obj);
	}

	public ResultSet excuteQuery(String sql, Object[] obj) {
		// TODO Auto-generated method stub
		return baseDao.excuteQuery(sql, obj);
	}

	public int save(String sql, Object[] obj) {
		// TODO Auto-generated method stub
		return baseDao.excuteUpdate(sql, obj);
	}

	public int update(String sql, Object[] obj) {
		// TODO Auto-generated method stub
		return baseDao.excuteUpdate(sql, obj);
	}

}
