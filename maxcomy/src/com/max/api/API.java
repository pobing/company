package com.max.api;

import java.sql.ResultSet;

public interface API {
	public int save(String sql, Object[] obj);

	public int update(String sql, Object[] obj);

	public int delete(String sql, Object[] obj);

	public ResultSet excuteQuery(String sql, Object[] obj);
}
