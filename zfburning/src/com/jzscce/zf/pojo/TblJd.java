package com.jzscce.zf.pojo;

public class TblJd {
	// Fields

	private Integer jdid;
	private String jd;
	private Integer qxid;

	// Constructors

	/** default constructor */
	public TblJd() {
	}

	/** minimal constructor */
	public TblJd(Integer qxid) {
		this.qxid = qxid;
	}

	/** full constructor */
	public TblJd(String jd, Integer qxid) {
		this.jd = jd;
		this.qxid = qxid;
	}

	// Property accessors

	public Integer getJdid() {
		return this.jdid;
	}

	public void setJdid(Integer jdid) {
		this.jdid = jdid;
	}

	public String getJd() {
		return this.jd;
	}

	public void setJd(String jd) {
		this.jd = jd;
	}

	public Integer getQxid() {
		return this.qxid;
	}

	public void setQxid(Integer qxid) {
		this.qxid = qxid;
	}

}