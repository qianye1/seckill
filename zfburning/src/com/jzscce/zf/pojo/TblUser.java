package com.jzscce.zf.pojo;


/**
 * TblUser entity. @author MyEclipse Persistence Tools
 */


public class TblUser{

	// Fields

	private Integer uid;
	private String uname;
	private String upass;

	// Constructors

	/** default constructor */
	public TblUser() {
	}

	/** full constructor */
	public TblUser(String uname, String upass) {
		this.uname = uname;
		this.upass = upass;
	}
	public TblUser(Integer uid,String uname, String upas) {
		this.uid = uid;
		this.uname = uname;
		this.upass = upass;
	}

	// Property accessors
	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpass() {
		return upass;
	}

	public void setUpass(String upass) {
		this.upass = upass;
	}

}