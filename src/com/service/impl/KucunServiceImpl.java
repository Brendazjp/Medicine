package com.service.impl;

import java.util.List;

import com.bean.Chanpin;
import com.bean.Kucun;
import com.dao.CangkuDAO;
import com.dao.ChanpinDAO;
import com.dao.KucunDAO;
import com.service.KucunService;
import com.util.PageModel;

public class KucunServiceImpl implements KucunService {
  
	private KucunDAO kucunDao;
	private CangkuDAO cangkuDao;
	private ChanpinDAO chanpinDao;
	
   
	public void delete(Kucun kucun) {

		this.kucunDao.delete(kucun);
		
	}

	public Kucun findById(int id) {
		return this.kucunDao.findById(id);
	}

	public PageModel findall(int offset) {
		StringBuffer sb=new StringBuffer();
		sb.append("from Kucun order by id desc");
		return this.kucunDao.find(sb.toString(), offset);
	}

	public PageModel findstr(Kucun k, int offset) {
		StringBuffer sb= new StringBuffer();
		 sb.append("from Kucun where 1=1 ");
		 if((null!=k.getKcid())&&(!"".equals(k.getKcid()))){
			 sb.append(" and kcid like '%").append(k.getKcid()).append("%'");
		 }
		 if((null!=k.getChanname())&&(!"".equals(k.getChanname()))){
			 sb.append(" and channame like '%").append(k.getChanname()).append("%'");
		 }
		 if((null!=k.getCkname())&&(!"".equals(k.getCkname()))){
			 sb.append(" and ckname like '%").append(k.getCkname()).append("%'");
		 }
		 if((null!=k.getJztime())&&(!"".equals(k.getJztime()))){
			 sb.append(" and jztime like '%").append(k.getJztime()).append("%'");
		 }
		return this.kucunDao.find(sb.toString(), offset);
	}
	/*
	 * 显示库存量小预警值的所有记录
	 */
	public PageModel yujing(int offset) {
		StringBuffer sb=new StringBuffer();
		sb.append("from Kucun where shuliang<=yujingzhi");
		return this.kucunDao.find(sb.toString(), offset);
	}

	public void save(Kucun kucun) {
		this.kucunDao.save(kucun);

	}

	public void update(Kucun kucun) {
		this.kucunDao.update(kucun);

	}
	/**
	 * 为DWR服务,验证此产品编号是存在，并且验证是否下线
	 */
	public String findchanpin1(String chanid) {
		Chanpin cp=this.chanpinDao.findByChanid("from Chanpin where chanid='"+chanid+"' and biaozhi=0");
		if(null!=cp)
		{
			return cp.getChanname();
		}
		else
		{
		    return "此产品编号不存在"; 
		}	
	}
	
	/**
	 * 通过产品编号查找出对应的产品信息,并返回产品信息
	 */
	public Chanpin findchanpin(String chanid) {
		Chanpin cp=this.chanpinDao.findByChanid("from Chanpin where chanid='"+chanid+"'");
		return cp;
	}

	/**
	 * 显示所有仓库信息
	 */
	public List showcangku() {
		PageModel pm=this.cangkuDao.find("from Cangku",0);
		List list=pm.getDatas();
		return list;
	}

	
	
	public KucunDAO getKucunDao() {
		return kucunDao;
	}

	public void setKucunDao(KucunDAO kucunDao) {
		this.kucunDao = kucunDao;
	}

	public CangkuDAO getCangkuDao() {
		return cangkuDao;
	}

	public void setCangkuDao(CangkuDAO cangkuDao) {
		this.cangkuDao = cangkuDao;
	}

	public ChanpinDAO getChanpinDao() {
		return chanpinDao;
	}

	public void setChanpinDao(ChanpinDAO chanpinDao) {
		this.chanpinDao = chanpinDao;
	}



}
