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
	 * ���������Ϣ
	 * 
	 * @param obj
	 * @return
	 */
	public Message getMessageById(Object[] obj) {

		return msgDao.getMessageById(obj);
	}

	/**
	 * ��������
	 */

	public int addMsg(Object[] obj) {
		return msgDao.addMsg(obj);
	}

	/**
	 * ɾ��ָ������
	 * 
	 * @param obj
	 * @return
	 */
	public int delMsg(Object[] obj) {
		return msgDao.delMsg(obj);
	}
}
