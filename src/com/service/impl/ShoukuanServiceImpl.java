package com.service.impl;

import com.bean.Shoukuan;
import com.bean.Xiaoshou;
import com.dao.ShoukuanDAO;
import com.dao.XiaoshouDAO;
import com.service.ShoukuanService;
import com.util.PageModel;

public class ShoukuanServiceImpl implements ShoukuanService {
	private ShoukuanDAO shoukuanDao; 
	private XiaoshouDAO xiaoshouDao;

	public void delete(Shoukuan shoukuan) {
		this.shoukuanDao.delete(shoukuan);
	}

	public Xiaoshou find(String xiaoid) {
		String sql="from Xiaoshou where xiaoid='"+xiaoid+"'";
		return this.xiaoshouDao.findByxiaoid(sql);
	}

	public Shoukuan findById(int id) {
		
		return this.shoukuanDao.findById(id);
	}

	public PageModel findStr(Shoukuan s, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Shoukuan where 1=1 ");
		 if((null!=s.getShoukuanid())&&(!"".equals(s.getShoukuanid()))){
			 sb.append(" and shoukuanid like '%").append(s.getShoukuanid()).append("%'");
		 }
		 if((null!=s.getXiaoshou().getXiaoid())&&(!"".equals(s.getXiaoshou().getXiaoid()))){
			 sb.append(" and xiaoshou.xiaoid like '%").append(s.getXiaoshou().getXiaoid()).append("%'");
		 }
		 if((null!=s.getShitime())&&(!"".equals(s.getShitime()))){
			 sb.append(" and shitime like '%").append(s.getShitime()).append("%'");
		 }
		 if((null!=s.getShoukuanren())&&(!"".equals(s.getShoukuanren()))){
			 sb.append(" and shoukuanren like '%").append(s.getShoukuanren()).append("%'");
		 }
		return this.shoukuanDao.find(sb.toString(), offset);
	}

	public PageModel findall(int offset) {
		StringBuffer sb=new StringBuffer();
        sb.append("from Shoukuan order by id desc");
		return this.shoukuanDao.find(sb.toString(), offset);
	}

	public Xiaoshou finddwr(String xiaoid) {
		String sql="from Xiaoshou where xiaoid='"+xiaoid+"' and zhuangtai in('通过审批','发货')";
		return this.xiaoshouDao.findByxiaoid(sql);
	}

	public void save(Shoukuan shoukuan) {
		this.shoukuanDao.save(shoukuan);

	}
	public void updatexinyu(Xiaoshou xiaoshou) {
		this.xiaoshouDao.update(xiaoshou);
		
	}

	
	
	
	
	
	
	
	public ShoukuanDAO getShoukuanDao() {
		return shoukuanDao;
	}

	public void setShoukuanDao(ShoukuanDAO shoukuanDao) {
		this.shoukuanDao = shoukuanDao;
	}
	public XiaoshouDAO getXiaoshouDao() {
		return xiaoshouDao;
	}

	public void setXiaoshouDao(XiaoshouDAO xiaoshouDao) {
		this.xiaoshouDao = xiaoshouDao;
	}

	

}
