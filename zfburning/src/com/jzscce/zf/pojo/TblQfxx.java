package com.jzscce.zf.pojo;

import java.sql.Timestamp;

/**
 * TblFwxx entity. @author MyEclipse Persistence Tools
 */

@SuppressWarnings("serial")
public class TblQfxx implements java.io.Serializable {

	// Fields
	private String qtitle;
	
	private String qfxx;

	// Constructors

	/** default constructor */
	public TblQfxx() {
	}

	/** minimal constructor */


	

	
	//Çó×â³õÊ¼»¯
	public TblQfxx(String qfxx,String qtitile) {

		this.qfxx = qfxx;

		this.qtitle=qtitle;

	}

	//
	public String getQfxx() {
		return this.qfxx;
	}

	public void setQfxx(String qfxx) {
		this.qfxx = qfxx;
	}

	public String getQtitle() {
		return this.qtitle;
	}

	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
}
	//
