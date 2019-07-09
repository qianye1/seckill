package com.jzscce.zf.dao;
import java.util.List;

import com.jzscce.zf.pojo.*;
public interface ItblFwxxDao {
	public List<TblFwxx> queryAll();
	
	/**
	 * 根据Id显示详细信息
	 * @param id
	 * @return
	 */
	public TblFwxx getById(int fwid);
	
	/**
	 * 根据Id显示房屋类型
	 * @param id
	 * @return
	 */
	public TblFwlx getByIdLxid(int lxid); 
	
	/**
	 * 根据Id显示房屋所在街道
	 * @param id
	 * @return
	 */
	public TblJd getByJdid(int jdid);
	
	/**
	 * 显示房屋所在区县
	 * @param id
	 * @return
	 */
	public TblQx getByQxid();
	
	/**
	 * 用户登入
	 * @param uname
	 * @param upass
	 * @return
	 */
	public TblUser login(String uname,String upass);
	
	/**
	 * 用户注册
	 * @param board
	 */
	public boolean addUser(TblUser tblUser);
	
	/**
	 * 查询当前用户Id租房信息
	 * @param uid
	 * @return
	 */
	public List<TblFwxx> myFwxxInfo(int uid);
	
	/**
	 * 发布租房信息
	 * @param tblFwxx
	 * @return
	 */
	public boolean addTblFwxx(TblFwxx tblFwxx);
	
	/**
	 *  根据id删除当前用户的租房信息
	 * @param fwid
	 * @return
	 */
	public boolean delete(int fwid);
		
	
	/**
	 *  根据Id找到此对象	
	 * @param fwid
	 * @return
	 */
	public TblFwxx getByIdTdlFwxx(int fwid);
	
	/**
	 * 修改当前用户的租房信息
	 * @param tblFwxx
	 */	
	public void update(TblFwxx tblFwxx);
	
	/**
	 * 搜索
	 * @param title
	 * @return
	 */
	public List<TblFwxx> search(String title);
	/**
	 * 搜索
	 * @param title
	 * @param jdid
	 * @return
	 */
	public List<TblFwxx> search(String title, int jdid);
	/**
	 * 搜索
	 * @param title
	 * @param jdid
	 * @param zj
	 * @return
	 */
	public List<TblFwxx> search(String title, int jdid, int zj, int zj1);
	/**
	 * 获取条件中的数据
	 * @param pageno
	 * @param pagesize
	 * @return
	 */
	public List<TblFwxx> QueryAll(int pageno, int pagesize);
	/**
	 * 获取总条数
	 * @return
	 */
	public int QueryAllcount();
	public List<TblFwxx> common(String hql);
}
