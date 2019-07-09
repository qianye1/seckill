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
	//  ��ҳ����Ҫ������
	private int pageno;  //  ��ʾ�ڼ�ҳ
	private String pagemsg; // �������Ϊ�� 
	private int count;  // ������
	private int pagesize = 6;   // ��ʾ��ҳ
	private int pageMax = 0;  //  βҳ
	private String qfxx;
	private TblQfxx tblQfxx;
	private String qtitle;
	private int tbljd1; 
		//�ⷿ����
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
			//��ȡ��ǰ�û�	
			
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
	// �Զ���¼
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
	// ��ѯȫ��
	public String query()	
	{			
		List<TblFwxx> tblFwxxList = this.bizImpl.queryAll();
		super.getSession().put("tblFwxxList",tblFwxxList);
		return "goScce";	
	}
	// ��¼
	public String login()
	{
		
		if (this.remember!=null) {
			/**
			 *  out.println("�Զ���½");
			 *	������������Cookie
			 */
			//����Cookie 
			Cookie cookie = new Cookie("autoLogin","allowAutoLogin"); 
			//����Cookie�ĳ�ʱʱ�� 
			cookie.setMaxAge(24 * 60 * 60 *60); 
			//��Cookie���͵��ͻ��� 
			super.getResponse().addCookie(cookie); 
			//���������ǲ������ݿ����			
		}
		this.tblUser = this.bizImpl.login(uname,upass);
		super.getSession().put("tblUser",tblUser);
		if(this.tblUser!=null)
		{	
		    return queryAllPage();
		}
		return "login_form";
	}
	
	// ��¼
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
	
	//ע��
	public String leave()
	{
		//���һ��session�ķ���������key���
		super.getSession().remove("tblUser");		
		//������ҳ		 				
		return query();
	}
	
	//�û�ע��
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
		//��ʾǰ���
		super.getSession().remove("tblFwxx");
		super.getSession().remove("tblFwlx");		
		super.getSession().remove("tblJd");		
		super.getSession().remove("tblQx");
		//  �������ַ���
		//��ʾ�ⷿ��ϸ��Ϣ
		tblFwxx = this.bizImpl.getById(this.fwid);
		super.getSession().put("tblFwxx",tblFwxx);
		//��ʾ�ⷿ����
		tblFwlx = this.bizImpl.getByLxid(lxid);
		super.getSession().put("tblFwlx",tblFwlx);
		//��ʾ�ⷿ�ֵ�
		tblJd = this.bizImpl.getByJdid(jdid);
		super.getSession().put("tblJd",tblJd);
		//��ʾ�ⷿ����
		//tblQx = this.bizImpl.getByQxid();
		//TblQx  tblQx = new TblQx(1);
		//super.getSession().put("tblQx",tblQx);
		return "showInfo";
	}
	//�鿴��ǰ�û����ⷿ��Ϣ
	public String myFwxxInfo()
	{
		//��ȡ��ǰ�û�
		this.tblUser = (TblUser)super.getSession().get("tblUser");				
		//�����û�id��ѯ
		List<TblFwxx> myTblFwxxList = this.bizImpl.myFwxxInfo(this.tblUser.getUid());			
		super.getSession().put("myTblFwxxList",myTblFwxxList);	
		return "myFwxxInfo";		
	}
	//�����ⷿ��Ϣ
	public String postConfirm()
	{				
		this.tblUser = (TblUser) super.getSession().get("tblUser");
		date = new Date(); 
		dt = 1;
		tblFwxx = new TblFwxx(this.tblUser.getUid(),jdid,lxid,shi,ting,fwxx,zj,title,date,telephone,lxr,jwxx,dt,lcid,mj);
		this.bizImpl.addTblFwxx(tblFwxx);
		return myFwxxInfo();
	}
	//����idɾ��һ���ⷿ��Ϣ
	public String delzf()
	{
		/*System.out.println("ɾ��1"); 
		System.out.println(fwid);
		boolean bo = this.bizImpl.delete(fwid);
		if(bo)
		{
			System.out.println("ɾ��4");
			return myFwxxInfo();
		}
		else
			System.out.println("ɾ��5");
			return "";*/
		//��ȡ��ǰ�û�
				this.tblUser = (TblUser)super.getSession().get("tblUser");				
				//�����û�id��ѯ
				List<TblFwxx> myTblFwxxList1 = this.bizImpl.myFwxxInfo(this.tblUser.getUid());
				TblFwxx  myTblFwxxList2= myTblFwxxList1.get(0);
				ArrayList<TblFwxx> myTblFwxxList3 = new ArrayList() ;
				myTblFwxxList3.add(myTblFwxxList2);
				super.getSession().put("myTblFwxxList",myTblFwxxList3);	
				return "myFwxxInfo";		
	}
	//��ת���޸�
	public String updInfo()
	{
		//���
		super.getSession().remove("tblFwxx");
		super.getSession().remove("tblFwlx");		
		super.getSession().remove("tblJd");		
		super.getSession().remove("tblQx");
		System.out.println(1);
		this.tblFwxx = this.bizImpl.getById(fwid);
		super.getSession().put("fwid",fwid);
		super.getSession().put("tblFwxx",tblFwxx);
		//��ʾ�ⷿ����
		tblFwlx = this.bizImpl.getByLxid(this.tblFwxx.getLxid());
		super.getSession().put("tblFwlx",tblFwlx);
		//��ʾ�ⷿ�ֵ�
		tblJd = this.bizImpl.getByJdid(this.tblFwxx.getJdid());
		super.getSession().put("tblJd",tblJd);
		//��ʾ�ⷿ����
		//tblQx = this.bizImpl.getByQxid();
		//super.getSession().put("tblQx",tblQx);
		//tbljd1 = this.tblJd.getQxid(); 
		//tblQx = this.bizImpl.getByQxid(tbljd1);
		//super.getSession().put("tblQx",tblQx);
		return "updInfo";
	}
	//�޸��ύ
	public String upd()
	{		
		//���ݵ�ǰ�û���ȡ�޸Ķ����uid
		 this.tblUser = (TblUser) super.getSession().get("tblUser");
		 this.fwid = Integer.parseInt(super.getSession().get("fwid").toString());		 		 
		 //date =  this.bizImpl.getById(fwid).getDate();		 
		//tblFwxx = new TblFwxx(fwid,this.tblUser.getUid(), jdid, lxid, shi, ting, fwxx, zj, title,date,telephone, lxr);
		 tblFwxx = new TblFwxx(fwid,this.tblUser.getUid(),title);
		 this.bizImpl.update(tblFwxx);
		return myFwxxInfo();
	}
	//����
	public String sea()
	{		
		//�û�û����ǰ��������
		//if(super.getSession().get("tblUser")!=null)
			//���
		    List<TblFwxx> tblFwList = null;
			if(!title.equals(""))
			{ 
				super.getSession().remove("tblFwxxList");	
				//�߼�����������������Ϊ��
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
				//��ͨ����������titleģ����ѯ
				else
				{	 			
					tblFwList = this.bizImpl.search(title);
				}
			}	
			//titleΪ�ղ�ѯ����
			else			
			{
				queryAllPage();
			}
			super.getSession().put("tblFwxxList",tblFwList);
			//System.out.println(super.getSession().get("tblFwList"));
			//System.out.println(tblFwList.get(0).getTitle());
			return "goScce";
	}
	//  hibernate��ҳ
	public String queryAllPage(){
			
			//���
			super.getSession().remove("tblFwxxList");		
			if (pageMax == 0) {
				int count =  this.bizImpl.QueryAllcount();
				pageMax = count / pagesize;
				if (count % pagesize != 0) {//ȡ��������
					pageMax += 1;
				}
			}
			if (pageno <= 0) {
				pageno = 1;
				pagemsg = "<font color='#FF0000'>�Ѿ��ǵ�һҳ�ˣ�</font>";
			} else if (pageno > pageMax) {
				pageno = pageMax;
				pagemsg = "<font color='#FF0000'>�Ѿ������һҳ�ˣ�</font>";
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
