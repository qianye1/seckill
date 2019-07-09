package com.jzscce.zf.dao;
import java.util.List;

import com.jzscce.zf.pojo.*;
public interface ItblFwxxDao {
	public List<TblFwxx> queryAll();
	
	/**
	 * ����Id��ʾ��ϸ��Ϣ
	 * @param id
	 * @return
	 */
	public TblFwxx getById(int fwid);
	
	/**
	 * ����Id��ʾ��������
	 * @param id
	 * @return
	 */
	public TblFwlx getByIdLxid(int lxid); 
	
	/**
	 * ����Id��ʾ�������ڽֵ�
	 * @param id
	 * @return
	 */
	public TblJd getByJdid(int jdid);
	
	/**
	 * ��ʾ������������
	 * @param id
	 * @return
	 */
	public TblQx getByQxid();
	
	/**
	 * �û�����
	 * @param uname
	 * @param upass
	 * @return
	 */
	public TblUser login(String uname,String upass);
	
	/**
	 * �û�ע��
	 * @param board
	 */
	public boolean addUser(TblUser tblUser);
	
	/**
	 * ��ѯ��ǰ�û�Id�ⷿ��Ϣ
	 * @param uid
	 * @return
	 */
	public List<TblFwxx> myFwxxInfo(int uid);
	
	/**
	 * �����ⷿ��Ϣ
	 * @param tblFwxx
	 * @return
	 */
	public boolean addTblFwxx(TblFwxx tblFwxx);
	
	/**
	 *  ����idɾ����ǰ�û����ⷿ��Ϣ
	 * @param fwid
	 * @return
	 */
	public boolean delete(int fwid);
		
	
	/**
	 *  ����Id�ҵ��˶���	
	 * @param fwid
	 * @return
	 */
	public TblFwxx getByIdTdlFwxx(int fwid);
	
	/**
	 * �޸ĵ�ǰ�û����ⷿ��Ϣ
	 * @param tblFwxx
	 */	
	public void update(TblFwxx tblFwxx);
	
	/**
	 * ����
	 * @param title
	 * @return
	 */
	public List<TblFwxx> search(String title);
	/**
	 * ����
	 * @param title
	 * @param jdid
	 * @return
	 */
	public List<TblFwxx> search(String title, int jdid);
	/**
	 * ����
	 * @param title
	 * @param jdid
	 * @param zj
	 * @return
	 */
	public List<TblFwxx> search(String title, int jdid, int zj, int zj1);
	/**
	 * ��ȡ�����е�����
	 * @param pageno
	 * @param pagesize
	 * @return
	 */
	public List<TblFwxx> QueryAll(int pageno, int pagesize);
	/**
	 * ��ȡ������
	 * @return
	 */
	public int QueryAllcount();
	public List<TblFwxx> common(String hql);
}
