package com.max.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.max.apimpl.ApiImpl;
import com.max.entity.Product;

public class ProductDao {
	ApiImpl impl = new ApiImpl();

	/**
	 * 获取商品列表
	 * 
	 * @return
	 */
	public List<Product> getList() {

		String sql = "select * from prodcut ";
		List<Product> list = new ArrayList<Product>();
		Product pro = null;
		ResultSet rs = impl.excuteQuery(sql, null);
		try {
			while (rs.next()) {

				pro = new Product();
				pro.setId(rs.getInt("id"));
				pro.setName(rs.getString("name"));
				pro.setPicture(rs.getString("picture"));
				pro.setType(rs.getString("type"));
				pro.setContent(rs.getString("content"));
				list.add(pro);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 获取指定商品
	 * 
	 * @param obj
	 * @return
	 */
	public Product getProductById(Object[] obj) {

		String sql = "select * from product where id=? ";

		Product pro = null;
		ResultSet rs = impl.excuteQuery(sql, obj);
		try {
			if (rs.next()) {
				pro = new Product();
				pro = new Product();
				pro.setId(rs.getInt("id"));
				pro.setName(rs.getString("name"));
				pro.setPicture(rs.getString("picture"));
				pro.setType(rs.getString("type"));
				pro.setContent(rs.getString("content"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pro;

	}

	/**
	 * 根据商品类别获取信息
	 * 
	 * @param obj
	 * @return
	 */
	public List<Product> getProductByType(Object[] obj) {

		String sql = "select * from product where type=? order by id desc";
		List<Product> list = new ArrayList<Product>();
		Product pro = null;
		ResultSet rs = impl.excuteQuery(sql, obj);
		try {
			while(rs.next()) {
				pro = new Product();

				pro = new Product();
				pro.setId(rs.getInt("id"));
				pro.setName(rs.getString("name"));
				pro.setPicture(rs.getString("picture"));
				pro.setType(rs.getString("type"));
				pro.setContent(rs.getString("content"));
				list.add(pro);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 添加商品
	 */

	public int addProduct(Object[] obj) {
		String sql = "insert into product(name,type,picture,content) values (?,?,?,?)";
		return impl.save(sql, obj);

	}

	/**
	 * 删除指定商品
	 * 
	 * @param obj
	 * @return
	 */
	public int delProduct(Object[] obj) {
		String sql = "delete from product where id=? ";
		return impl.delete(sql, obj);
	}

	/**
	 * 更新商品信息
	 * 
	 * @param obj
	 * @return
	 */
	public int updateProduct(Object[] obj) {
		String sql = "update product set name=?,type=?,picture=?,content=?  where id=?";
		return impl.update(sql, obj);
	}
}
