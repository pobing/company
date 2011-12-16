package com.max.entity;

/**
 * Catalog entity. @author MyEclipse Persistence Tools
 */

public class Catalog implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String code;
	private String pcode;
	private String status;

	// Constructors

	/** default constructor */
	public Catalog() {
	}

	/** full constructor */
	public Catalog(String name, String code, String pcode, String status) {
		this.name = name;
		this.code = code;
		this.pcode = pcode;
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

	public String getCode() {
		return this.code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getPcode() {
		return this.pcode;
	}

	public void setPcode(String pcode) {
		this.pcode = pcode;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}