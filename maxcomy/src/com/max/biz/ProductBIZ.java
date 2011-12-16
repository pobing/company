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
	 * ��ȡָ����Ʒ
	 * 
	 * @param obj
	 * @return
	 */
	public Product getProductById(Object[] obj) {
		return proDao.getProductById(obj);
	}

	/**
	 * ������Ʒ����ȡ��Ϣ
	 * 
	 * @param obj
	 * @return
	 */
	public List<Product> getProductByType(Object[] obj) {

		return proDao.getProductByType(obj);
	}

	/**
	 * �����Ʒ
	 */

	public int addProduct(Object[] obj) {
		return proDao.addProduct(obj);
	}

	/**
	 * ɾ��ָ����Ʒ
	 * 
	 * @param obj
	 * @return
	 */
	public int delProduct(Object[] obj) {
		return proDao.delProduct(obj);
	}

	/**
	 * ������Ʒ��Ϣ
	 * 
	 * @param obj
	 * @return
	 */
	public int updateProduct(Object[] obj) {
		return proDao.updateProduct(obj);
	}
}
