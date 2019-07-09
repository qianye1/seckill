package com.jzscce.zf.pojo;


public class TblFwlx {

	// Fields
	private int lxid;
	private String fwlx;
	// Constructors
	/** default constructor */
	public TblFwlx() {
	}

	/** full constructor */
	public TblFwlx(String fwlx) {
		this.fwlx = fwlx;
	}

	// Property accessors
   
	public int getLxid() {
		return this.lxid;
	}

	public void setLxid(int lxid) {
		this.lxid = lxid;
	}

	public String getFwlx() {
		return this.fwlx;
	}

	public void setFwlx(String fwlx) {
		this.fwlx = fwlx;
	}
}