package com.max.entity;

public class Users implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String pass;
	private Integer sex;
	private Integer status;

	// Constructors

	/** default constructor */
	public Users() {
	}

	/** minimal constructor */
	public Users(String name, String pass) {
		this.name = name;
		this.pass = pass;
	}

	/** full constructor */
	public Users(String name, String pass, Integer sex, Integer status) {
		this.name = name;
		this.pass = pass;
		this.sex = sex;
		this.status = status;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
