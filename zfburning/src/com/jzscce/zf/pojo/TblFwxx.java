
package com.jzscce.zf.pojo;
import java.util.Date;
/**
 * TblFwxx entity. @author MyEclipse Persistence Tools
 */

public class TblFwxx{

	// Fields

	private Integer fwid;
	private Integer uid;
	private Integer jdid;
	private Integer lxid;
	private Integer shi;
	private Integer ting;
	private String fwxx;
	private Integer zj;
	private String title;
	private Date date;
	private String telephone;
	private String lxr;
	private Integer mj;
	private Integer lcid;
	private Integer dt;
	private String jwxx;

	// Constructors

	/** default constructor */
	public TblFwxx() {
	}
	public TblFwxx(String title) {
		this.title = title;
	}
	public TblFwxx(Integer fwid,Integer uid,String title) {
		this.fwid =fwid;
		this.uid=uid;
		this.title = title;
	}
	public TblFwxx(Integer uid,String title) {
		this.uid=uid;
		this.title = title;
	}
	public TblFwxx(String title,Integer zj,Date date) {
		this.title = title;
		this.zj = zj;
		this.date = date;
	}
	/** full constructor */
	public TblFwxx(Integer uid, Integer jdid, Integer lxid,Integer shi,
			Integer ting, String fwxx, Integer zj, String title, Date date,
			String telephone, String lxr,String jwxx,Integer dt,Integer lcid,Integer mj){
		this.uid = uid;
		this.jdid = jdid;
		this.lxid = lxid;
		this.shi = shi;
		this.ting = ting;
		this.fwxx = fwxx;
		this.zj = zj;
		this.title = title;
		this.date = date;
		this.telephone = telephone;
		this.lxr = lxr;
		this.jwxx = jwxx;
		this.dt =dt;
		this.lcid = lcid;
		this.mj = mj;
		this.lxid =lxid;
	}

	

	
	public TblFwxx(Integer uid, Integer jdid, Integer lxid, Integer shi,
			Integer ting, String fwxx, Integer zj, String title, 
			String telephone, String lxr) {
		this.uid = uid;
		this.jdid = jdid;
		this.lxid = lxid;
		this.shi = shi;
		this.ting = ting;
		this.fwxx = fwxx;
		this.zj = zj;
		this.title = title;
		this.telephone = telephone;
		this.lxr = lxr;
	}
	public TblFwxx(Integer fwid,Integer uid, Integer jdid, Integer lxid, Integer shi,
			Integer ting, String fwxx, Integer zj, String title,Date date,
			String telephone, String lxr) {
		this.fwid = fwid;
		this.uid = uid;
		this.jdid = jdid;
		this.lxid = lxid;
		this.shi = shi;
		this.ting = ting;
		this.fwxx = fwxx;
		this.zj = zj;
		this.title = title;
		this.date = date;
		this.telephone = telephone;
		this.lxr = lxr;
	}
	
	public TblFwxx(Integer fwid,Integer uid, Integer jdid, Integer lxid, Integer shi,
			Integer ting, String fwxx,Integer zj, String title, 
			String telephone, String lxr) {
		this.fwid = fwid;
		this.uid = uid;
		this.jdid = jdid;
		this.lxid = lxid;
		this.shi = shi;
		this.ting = ting;
		this.fwxx = fwxx;
		this.zj = zj;
		this.title = title;	
		this.telephone = telephone;
		this.lxr = lxr;
	}
	
	// Property accessors

	public Integer getFwid() {
		return this.fwid;
	}

	public void setFwid(Integer fwid) {
		this.fwid = fwid;
	}

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getJdid() {
		return this.jdid;
	}

	public void setJdid(Integer jdid) {
		this.jdid = jdid;
	}

	public Integer getLxid() {
		return this.lxid;
	}

	public void setLxid(Integer lxid) {
		this.lxid = lxid;
	}

	public Integer getShi() {
		return this.shi;
	}

	public void setShi(Integer shi) {
		this.shi = shi;
	}

	public Integer getTing() {
		return this.ting;
	}

	public void setTing(Integer ting) {
		this.ting = ting;
	}

	public String getFwxx() {
		return this.fwxx;
	}

	public void setFwxx(String fwxx) {
		this.fwxx = fwxx;
	}

	public Integer getZj() {
		return this.zj;
	}

	public void setZj(Integer zj) {
		this.zj = zj;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return this.date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTelephone() {
		return this.telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getLxr() {
		return this.lxr;
	}

	public void setLxr(String lxr) {
		this.lxr = lxr;
	}
	public void setMj(Integer mj) {
		this.mj = mj;
	}
	public Integer getMj() {
		return this.mj;
	}
	public void setLcid(Integer lcid) {
		this.lcid = lcid;
	}
	public Integer getLcid() {
		return this.lcid;
	}
	public void setDt(Integer dt) {
		this.dt = dt;
	}
	public Integer getDt() {
		return this.dt;
	}
	public void setJwxx(String jwxx) {
		this.jwxx = jwxx;
	}

	public String getJwxx() {
		return this.jwxx;
	}
}