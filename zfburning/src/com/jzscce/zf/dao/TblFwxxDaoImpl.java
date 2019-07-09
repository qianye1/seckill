package  com.jzscce.zf.dao;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Restrictions;

import com.jzscce.zf.pojo.*;

import org.hibernate.SessionFactory;


import org.hibernate.query.NativeQuery;
import com.jzscce.zf.pojo.TblQfxx;
public class TblFwxxDaoImpl implements ItblFwxxDao {
	private List<String> qflist=new ArrayList();
    private SessionFactory sessionFactory;
	public boolean addTblQfxx(TblQfxx tblQfxx) {

		try {
			this.qflist.add(tblQfxx.getQtitle());
             return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	public List<String> myQfxxInfo(String qtitle) {
		// TODO Auto-generated method stub
		qflist.add(qtitle);
		
		while (qflist.remove(null));

		return this.qflist;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	private TblJd tblJd;
	public TblJd getTblJd() {
		return tblJd;
	}
	public void setTblJd(TblJd tblJd) {
		this.tblJd = tblJd;
	}

	@Override
	public List<TblFwxx> queryAll() {
		List<TblFwxx> list = null;
		Session session = this.sessionFactory.getCurrentSession();
		try{
		String hql = "select new TblFwxx(title,zj,date) from TblFwxx";
		Query query = session.createQuery(hql);
		list = query.list();
		session.close();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}
	// 根据Id找到此对象
	@Override
	public TblFwxx getById(int fwid) {
		return (TblFwxx) this.sessionFactory.getCurrentSession().get(TblFwxx.class, fwid);
	}

	//根据Id显示房间类型
	@Override
	public TblFwlx getByIdLxid(int lxid) {	
		return  (TblFwlx) this.sessionFactory.getCurrentSession().get(TblFwlx.class, lxid);
	}
	
	//根据Id显示房间所在街道
	@Override
	public TblJd getByJdid(int jdid) {
		return  (TblJd) this.sessionFactory.getCurrentSession().get(TblJd.class, jdid);
	}			
	
	//显示房间所在区县
	@Override
	public TblQx getByQxid() {
		return  (TblQx) sessionFactory.getCurrentSession().get(TblQx.class, this.tblJd.getQxid());
	}
	
	
	//登录

	public TblUser login(String uname,String upass) {
		//对象查询
		//String hqlString = "from TblUser where uname =:uname and upass=:upass";
		List<TblUser> list;
		Session session = this.sessionFactory.getCurrentSession();
		try{
		Criteria criteria = session.createCriteria(TblUser.class);
		Criterion criterion1 = Restrictions.eq("uname",uname);
		Criterion criterion2 = Restrictions.eq("upass",upass);
		criteria.add(criterion1);
		criteria.add(criterion2);
		list = criteria.list();
	    return (TblUser) (list.size() > 0 ? list.get(0) : null);
		//List<TblUser> list = this.sessionFactory.getCurrentSession().createCriteria(TblUser.class).add(Example.create(new TblUser(uname,upass))).list();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.getTransaction().rollback();
			return (TblUser) null;
		}
	}

	//注册	
	@Override
	public boolean addUser(TblUser tblUser) {
		try {
			sessionFactory.getCurrentSession().save(tblUser);
             return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}				
	
	//查询当前用户Id租房信息
	public List<TblFwxx> myFwxxInfo(int uid) {
		System.out.println(2);
		String hql = "from TblFwxx where uid='"+uid+"'";
		System.out.println(3);
		List<TblFwxx> list= common(hql);
		//List<TblFwxx> list = sessionFactory.getCurrentSession().createQuery("from TblFwxx where uid='" + uid + "'").list();	 
		return list;
	}

	//发布租房信息	
	@Override
	public boolean addTblFwxx(TblFwxx tblFwxx) {
		try {
			this.sessionFactory.getCurrentSession().save(tblFwxx);
             return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	

	// 根据id删除当前用户的租房信息
	@Override
	public boolean delete(int fwid) {
		try {
			this.sessionFactory.getCurrentSession().delete(this.getById(fwid));
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	// 根据Id找到此对象
	@Override
	public TblFwxx getByIdTdlFwxx(int fwid) {
		return (TblFwxx) this.sessionFactory.getCurrentSession().get(TblFwxx.class, fwid);		
	}
	
	//修改当前用户的租房信息
	@Override
	public void update(TblFwxx tblFwxx) {
		this.sessionFactory.getCurrentSession().update(tblFwxx);
		 System.out.println(3);
	}
	//搜索
	@Override
	public List<TblFwxx> search(String title) {
			String hql = "from TblFwxx where title like '%"+title+"%'";
			List<TblFwxx> list = common(hql);
		
		//List<TblFwxx> list = this.sessionFactory.getCurrentSession().createQuery("from TblFwxx where title like '%"+title+"%'").list();	 
		return list;
	}
	public List<TblFwxx> search(String title, int jdid){
		//String hql = "from TblFwxx where title like '%"+title+"%' and jdid="+jdid+"";
		//List<TblFwxx> list = common(hql);
		String hql = "from TblFwxx where title like '%"+title+"%' and jdid="+jdid+"";
		List<TblFwxx> list = common(hql);
		//List<TblFwxx> list = sessionFactory.getCurrentSession().createQuery("from TblFwxx where title like '%"+title+"%' and jdid="+jdid+"").list();	 
		return list;
	}

	public List<TblFwxx> search(String title, int jdid, int zj, int zj1){
		String hql = "from TblFwxx where title like '%"+title+"%' and jdid="+jdid+" and zj between "+zj+" and "+zj1+"";
		List<TblFwxx> list = common(hql);
		//List<TblFwxx> list = sessionFactory.getCurrentSession().createQuery("from TblFwxx where title like '%"+title+"%' and jdid="+jdid+" and zj between "+zj+" and "+zj1+"").list();	 
		return list;
	}

	@Override
	public List<TblFwxx> QueryAll(int pageno, int pagesize) {
		List<TblFwxx> list = null;
		Session session = this.sessionFactory.getCurrentSession();
		int first = ((pageno - 1) * pagesize);
		try{
		String hql = "from TblFwxx";
		Query query = session.createQuery(hql);
		query.setFirstResult(first);
		query.setMaxResults(pagesize);
		list = query.list();
		session.close();
		System.out.println(list);
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}
	@Override
	public int QueryAllcount() {
		
		List<TblFwxx> list;
		Session session = this.sessionFactory.getCurrentSession();
		int count = 0;
		try{
		String hql = "select count(*) from TblFwxx";
		Query query = session.createQuery(hql);			
		Number q = (Number)query.uniqueResult();  //返回单个实例
		count=q.intValue();  //返回数值	
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return count;
	}
	public List<TblFwxx> common(String hql){
		List<TblFwxx> list = null;
		Session session = this.sessionFactory.getCurrentSession();
		try{
		String newhql = hql;
		Query query = session.createQuery(newhql);			
		list = query.list();
		session.close();
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		return list;
	}
}
