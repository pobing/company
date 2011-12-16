package com.max.biz;

import java.util.List;

import com.max.dao.UserDao;
import com.max.entity.Users;

public class UserBIZ {
	UserDao userDao = new UserDao();

	public int getUserCount() {
		return userDao.getUserCount();
	}


	public Users validUser(Object[] obj) {
		return userDao.validUser(obj);
	}

	public List<Users> userList() {
		return userDao.userList();

	}

	public boolean findUser(Object[] obj) {

		return userDao.findUser(obj);
	}

	/**
	 * ������û�
	 */

	public int addUser(Object[] obj) {
		return userDao.addUser(obj);

	}

	public Users getOne(Object[] obj) {
		return userDao.getOne(obj);
	}

	/**
	 * ɾ��ָ���û���Ϣ
	 * 
	 * @param obj
	 * @return
	 */
	public int delUser(Object[] obj) {
		return userDao.delUser(obj);
	}

	/**
	 * �����û���Ϣ
	 * 
	 * @param obj
	 * @return
	 */
	public int updateUser(Object[] obj) {
		return userDao.updateUser(obj);
	}
}
