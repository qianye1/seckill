package com.cdut.actions;
import java.util.Date;
import java.util.List;
import javax.servlet.http.Cookie;

import java.util.ArrayList;
import java.util.Calendar; 
import java.text.SimpleDateFormat; 
import com.jzscce.zf.biz.TblFwxxBizImpl;
import com.jzscce.zf.pojo.*;
import com.jzscce.zf.pojo.TblQfxx; 
public class TblFwxxAction extends BaseAction{
	//  分页所需要的属性
	private int pageno;  //  显示第几页
	private String pagemsg; // 如果数据为空 
	private int count;  // 总条数
	private int pagesize = 6;   // 显示几页
	private int pageMax = 0;  //  尾页
	private String qfxx;
	private TblQfxx tblQfxx;
	private String qtitle;
	private int tbljd1; 
		//租房描述
		public String getQtitle() {
			return this.qtitle;
		}

		public void setQtitle(String qtitle) {
			this.qtitle = qtitle;
		}
		public String getQfxx() {
			return this.qfxx;
		}
		
		public void setQfxx(String qxx) {
			this.qfxx = qfxx;
		}
		public TblQfxx getTblQfxx() {
			return tblQfxx;
		}

		public void setTblQfxx(TblQfxx tblQfxx) {
			this.tblQfxx = tblQfxx;
		}

		public String postRent()
		{
			//获取当前用户	
			
			 tblQfxx = new TblQfxx(qfxx,qtitle);
			 String qstring=(qtitle.split(" ")[0]+"\r\n");
			return myQfxxInfo(qstring);
		}
			public String myQfxxInfo(String qtitle)
		{
			List<String> list=this.bizImpl.myQfxxInfo(qtitle);			
			super.getSession().put("List",list);
			
			return "myQfxxInfo";		
		}
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		this.pageno = pageno;
	}
	public String getPagemsg() {
		return pagemsg;
	}
	public void setPagemsg(String pagemsg) {
		this.pagemsg = pagemsg;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getPageMax() {
		return pageMax;
	}
	public void setPageMax(int pageMax) {
		this.pageMax = pageMax;
	}
	// 自动登录
	private String remember;
	public String getRemember() {
		return remember;
	}
	public void setRemember(String remember) {
		this.remember = remember;
	}
	private TblFwxxBizImpl bizImpl;
	private int fwid;
	private int mj;
	private int uid;
	private int jdid;
	private int lxid;
	private int shi;
	private int ting;
	private String fwxx;
	private int zj;
	private int zj1;
	private String title;
	private Date date;
	private int date1;
	private String telephone;
	private String lxr;
	private int lcid;
	private int dt;
	private String jwxx;
	private TblFwxx tblFwxx;
	private  List<TblFwxx> tblFwList;
	private TblFwlx tblFwlx;
	public List<TblFwxx> getTblFwList() {
		return tblFwList;
	}
	public void setTblFwList(List<TblFwxx> tblFwList) {
		this.tblFwList = tblFwList;
	}
	private TblJd tblJd;
	private TblQx tblQx;
	private int qxid;
	private TblUser tblUser;
	private String uname;
	private String upass;
	public int getDate1() {
		return date1;
	}
	public void setDate1(int date1) {
		this.date1 = date1;
	}
	public void setDt(int dt) {
		this.dt = dt;
	}
	public Integer getDt() {
		return this.dt;
	}
	
	public void setLcid(int lcid) {
		this.lcid = lcid;
	}
	public int getLcid() {
		return this.lcid;
	}
	public void setJwxx(String jwxx) {
		this.jwxx = jwxx;
	}

	public String getJwxx() {
		return this.jwxx;
	}
	public void setMj(int mj) {
		this.mj = mj;
	}
	public int getMj() {
		return mj;
	}
	public double getZj1() {
		return zj1;
	}
	public void setZj1(int zj1) {
		this.zj1 = zj1;
	}

	public void setBizImpl(TblFwxxBizImpl bizImpl) {
		this.bizImpl = bizImpl;
	}
	public int getFwid() {
		return fwid;
	}
	public void setFwid(int fwid) {
		this.fwid = fwid;
	}
	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getJdid() {
		return jdid;
	}

	public void setJdid(int jdid) {
		this.jdid = jdid;
	}

	public int getLxid() {
		return lxid;
	}

	public void setLxid(int lxid) {
		this.lxid = lxid;
	}

	public int getShi() {
		return shi;
	}

	public void setShi(int shi) {
		this.shi = shi;
	}

	public int getTing() {
		return ting;
	}

	public void setTing(int ting) {
		this.ting = ting;
	}

	public String getFwxx() {
		return fwxx;
	}

	public void setFwxx(String fwxx) {
		this.fwxx = fwxx;
	}

	public double getZj() {
		return zj;
	}

	public void setZj(int zj) {
		this.zj = zj;
	}

	public String getTitle() {
		return title;
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
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getLxr() {
		return lxr;
	}

	public void setLxr(String lxr) {
		this.lxr = lxr;
	}

	public TblFwxx getTblFwxx() {
		return tblFwxx;
	}

	public void setTblFwxx(TblFwxx tblFwxx) {
		this.tblFwxx = tblFwxx;
	}

	public TblFwlx getTblFwlx() {
		return tblFwlx;
	}

	public void setTblFwlx(TblFwlx tblFwlx) {
		this.tblFwlx = tblFwlx;
	}

	public TblJd getTblJd() {
		return tblJd;
	}

	public void setTblJd(TblJd tblJd) {
		this.tblJd = tblJd;
	}

	public TblQx getTblQx() {
		return tblQx;
	}

	public void setTblQx(TblQx tblQx) {
		this.tblQx = tblQx;
	}

	public int getQxid() {
		return qxid;
	}

	public void setQxid(int qxid) {
		this.qxid = qxid;
	}

	public TblUser getTblUser() {
		return tblUser;
	}

	public void setTblUser(TblUser tblUser) {
		this.tblUser = tblUser;
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
	// 查询全部
	public String query()	
	{			
		List<TblFwxx> tblFwxxList = this.bizImpl.queryAll();
		super.getSession().put("tblFwxxList",tblFwxxList);
		return "goScce";	
	}
	// 登录
	public String login()
	{
		
		if (this.remember!=null) {
			/**
			 *  out.println("自动登陆");
			 *	服务器端设置Cookie
			 */
			//创建Cookie 
			Cookie cookie = new Cookie("autoLogin","allowAutoLogin"); 
			//设置Cookie的超时时间 
			cookie.setMaxAge(24 * 60 * 60 *60); 
			//把Cookie发送到客户端 
			super.getResponse().addCookie(cookie); 
			//到底做还是不做数据库操作			
		}
		this.tblUser = this.bizImpl.login(uname,upass);
		super.getSession().put("tblUser",tblUser);
		if(this.tblUser!=null)
		{	
		    return queryAllPage();
		}
		return "login_form";
	}
	
	// 登录
	public String login_form()
	{		
		this.tblUser = this.bizImpl.login(uname, upass);
		super.getSession().put("tblUser",tblUser);
		if(this.tblUser!=null)
		{	
			return queryAllPage();
		}
		return "login_form";	
	}
	
	//注销
	public String leave()
	{
		//清除一个session的方法：根据key清除
		super.getSession().remove("tblUser");		
		//跳到主页		 				
		return query();
	}
	
	//用户注册
	public String addUser()
	{
		
		boolean bo = false; 
		if(!bo)
		{	
			this.bizImpl.addUser(new TblUser(this.uname,this.upass));
			return "loginScce";
		}
		return "loginError";
	}	
	public String showInfo()
	{		
		//显示前清空
		super.getSession().remove("tblFwxx");
		super.getSession().remove("tblFwlx");		
		super.getSession().remove("tblJd");		
		super.getSession().remove("tblQx");
		//  就是这种方法
		//显示租房详细信息
		tblFwxx = this.bizImpl.getById(this.fwid);
		super.getSession().put("tblFwxx",tblFwxx);
		//显示租房类型
		tblFwlx = this.bizImpl.getByLxid(lxid);
		super.getSession().put("tblFwlx",tblFwlx);
		//显示租房街道
		tblJd = this.bizImpl.getByJdid(jdid);
		super.getSession().put("tblJd",tblJd);
		//显示租房区域
		//tblQx = this.bizImpl.getByQxid();
		//TblQx  tblQx = new TblQx(1);
		//super.getSession().put("tblQx",tblQx);
		return "showInfo";
	}
	//查看当前用户的租房信息
	public String myFwxxInfo()
	{
		//获取当前用户
		this.tblUser = (TblUser)super.getSession().get("tblUser");				
		//根据用户id查询
		List<TblFwxx> myTblFwxxList = this.bizImpl.myFwxxInfo(this.tblUser.getUid());			
		super.getSession().put("myTblFwxxList",myTblFwxxList);	
		return "myFwxxInfo";		
	}
	//发布租房信息
	public String postConfirm()
	{				
		this.tblUser = (TblUser) super.getSession().get("tblUser");
		date = new Date(); 
		dt = 1;
		tblFwxx = new TblFwxx(this.tblUser.getUid(),jdid,lxid,shi,ting,fwxx,zj,title,date,telephone,lxr,jwxx,dt,lcid,mj);
		this.bizImpl.addTblFwxx(tblFwxx);
		return myFwxxInfo();
	}
	//根据id删除一条租房信息
	public String delzf()
	{
		/*System.out.println("删除1"); 
		System.out.println(fwid);
		boolean bo = this.bizImpl.delete(fwid);
		if(bo)
		{
			System.out.println("删除4");
			return myFwxxInfo();
		}
		else
			System.out.println("删除5");
			return "";*/
		//获取当前用户
				this.tblUser = (TblUser)super.getSession().get("tblUser");				
				//根据用户id查询
				List<TblFwxx> myTblFwxxList1 = this.bizImpl.myFwxxInfo(this.tblUser.getUid());
				TblFwxx  myTblFwxxList2= myTblFwxxList1.get(0);
				ArrayList<TblFwxx> myTblFwxxList3 = new ArrayList() ;
				myTblFwxxList3.add(myTblFwxxList2);
				super.getSession().put("myTblFwxxList",myTblFwxxList3);	
				return "myFwxxInfo";		
	}
	//跳转到修改
	public String updInfo()
	{
		//清空
		super.getSession().remove("tblFwxx");
		super.getSession().remove("tblFwlx");		
		super.getSession().remove("tblJd");		
		super.getSession().remove("tblQx");
		System.out.println(1);
		this.tblFwxx = this.bizImpl.getById(fwid);
		super.getSession().put("fwid",fwid);
		super.getSession().put("tblFwxx",tblFwxx);
		//显示租房类型
		tblFwlx = this.bizImpl.getByLxid(this.tblFwxx.getLxid());
		super.getSession().put("tblFwlx",tblFwlx);
		//显示租房街道
		tblJd = this.bizImpl.getByJdid(this.tblFwxx.getJdid());
		super.getSession().put("tblJd",tblJd);
		//显示租房区域
		//tblQx = this.bizImpl.getByQxid();
		//super.getSession().put("tblQx",tblQx);
		//tbljd1 = this.tblJd.getQxid(); 
		//tblQx = this.bizImpl.getByQxid(tbljd1);
		//super.getSession().put("tblQx",tblQx);
		return "updInfo";
	}
	//修改提交
	public String upd()
	{		
		//根据当前用户获取修改对象的uid
		 this.tblUser = (TblUser) super.getSession().get("tblUser");
		 this.fwid = Integer.parseInt(super.getSession().get("fwid").toString());		 		 
		 //date =  this.bizImpl.getById(fwid).getDate();		 
		//tblFwxx = new TblFwxx(fwid,this.tblUser.getUid(), jdid, lxid, shi, ting, fwxx, zj, title,date,telephone, lxr);
		 tblFwxx = new TblFwxx(fwid,this.tblUser.getUid(),title);
		 this.bizImpl.update(tblFwxx);
		return myFwxxInfo();
	}
	//搜索
	public String sea()
	{		
		//用户没登入前不能搜索
		//if(super.getSession().get("tblUser")!=null)
			//清空
		    List<TblFwxx> tblFwList = null;
			if(!title.equals(""))
			{ 
				super.getSession().remove("tblFwxxList");	
				//高级搜索：所有条件不为空
				if(jdid !=0)
				{
					if(zj>=0 && zj1!= 0)
					{																					
						tblFwList = this.bizImpl.search(title,jdid,zj,zj1);										
					}
					else
					{
						tblFwList = this.bizImpl.search(title,jdid);																	
					}
				}
				//普通搜索：根据title模糊查询
				else
				{	 			
					tblFwList = this.bizImpl.search(title);
				}
			}	
			//title为空查询所有
			else			
			{
				queryAllPage();
			}
			super.getSession().put("tblFwxxList",tblFwList);
			//System.out.println(super.getSession().get("tblFwList"));
			//System.out.println(tblFwList.get(0).getTitle());
			return "goScce";
	}
	//  hibernate分页
	public String queryAllPage(){
			
			//清空
			super.getSession().remove("tblFwxxList");		
			if (pageMax == 0) {
				int count =  this.bizImpl.QueryAllcount();
				pageMax = count / pagesize;
				if (count % pagesize != 0) {//取余数操作
					pageMax += 1;
				}
			}
			if (pageno <= 0) {
				pageno = 1;
				pagemsg = "<font color='#FF0000'>已经是第一页了！</font>";
			} else if (pageno > pageMax) {
				pageno = pageMax;
				pagemsg = "<font color='#FF0000'>已经是最后一页了！</font>";
			} else {
				pagemsg = "";
			}
			if (pageno > 0 && pageno <= pageMax) {
				tblFwList = this.bizImpl.QueryAll(pageno, pagesize);
				super.getSession().put("tblFwxxList", tblFwList);
				super.getRequest().put("pageno", pageno);
				super.getRequest().put("pageMax", pageMax);
				super.getRequest().put("pagemsg", pagemsg);
			}		
			return "goScce";
		}
}
