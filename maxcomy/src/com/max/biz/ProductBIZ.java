package com.max.biz;

import java.util.List;

import com.max.dao.ProductDao;
import com.max.entity.Product;

public class ProductBIZ {

	ProductDao proDao = new ProductDao();

	public List<Product> getList() {

		return proDao.getList();
	}

	/**
	 * 获取指定商品
	 * 
	 * @param obj
	 * @return
	 */
	public Product getProductById(Object[] obj) {
		return proDao.getProductById(obj);
	}

	/**
	 * 根据商品类别获取信息
	 * 
	 * @param obj
	 * @return
	 */
	public List<Product> getProductByType(Object[] obj) {

		return proDao.getProductByType(obj);
	}

	/**
	 * 添加商品
	 */

	public int addProduct(Object[] obj) {
		return proDao.addProduct(obj);
	}

	/**
	 * 删除指定商品
	 * 
	 * @param obj
	 * @return
	 */
	public int delProduct(Object[] obj) {
		return proDao.delProduct(obj);
	}

	/**
	 * 更新商品信息
	 * 
	 * @param obj
	 * @return
	 */
	public int updateProduct(Object[] obj) {
		return proDao.updateProduct(obj);
	}
}
