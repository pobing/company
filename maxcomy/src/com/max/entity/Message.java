package com.max.entity;

import java.util.Date;

public class Message {
	private int id;
	private String nickname;
	private String phone;
	private String email;
	private String content;
	private Date cdate;

	public Date getCdate() {
		return cdate;
	}

	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}

	public Message() {
	}

	public Message(int id, String nickname, String phone, String email,
			String content, Date cdate) {
		this.id = id;
		this.nickname = nickname;
		this.phone = phone;
		this.email = email;
		this.content = content;
		this.cdate = cdate;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
