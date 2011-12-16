package com.max.biz;

import java.util.List;

import com.max.dao.MessageDao;
import com.max.entity.Message;

public class MessageBIZ {
	MessageDao msgDao = new MessageDao();

	public List<Message> getList() {
		return msgDao.getList();
	}

	/**
	 * 浏览留言信息
	 * 
	 * @param obj
	 * @return
	 */
	public Message getMessageById(Object[] obj) {

		return msgDao.getMessageById(obj);
	}

	/**
	 * 在线留言
	 */

	public int addMsg(Object[] obj) {
		return msgDao.addMsg(obj);
	}

	/**
	 * 删除指定留言
	 * 
	 * @param obj
	 * @return
	 */
	public int delMsg(Object[] obj) {
		return msgDao.delMsg(obj);
	}
}
