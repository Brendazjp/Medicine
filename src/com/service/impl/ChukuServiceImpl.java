package com.service.impl;

import com.bean.Chuku;
import com.bean.Kucun;
import com.dao.ChukuDAO;
import com.dao.KucunDAO;
import com.service.ChukuService;
import com.util.PageModel;

public class ChukuServiceImpl implements ChukuService {
   
	private ChukuDAO chukuDao;
	private KucunDAO kucunDao;
	
	public void delete(Chuku chuku) {

		this.chukuDao.delete(chuku);
	}

	public Chuku findById(int id) {
		
		return this.chukuDao.findById(id);
	}

	public PageModel findall(int offset) {
        StringBuffer sb=new StringBuffer();
        sb.append("from Chuku order by id desc");
		return this.chukuDao.find(sb.toString(), offset);
	}

	public Kucun findkucun(String kcid) {
		return this.kucunDao.findByKcid("from Kucun where kcid='"+kcid+"'");
	}

	public PageModel findstr(Chuku c, int offset) {
		StringBuffer sb = new StringBuffer();
		sb.append("from Chuku where 1=1 ");
		if ((null != c.getCkid()) && (!"".equals(c.getCkid()))) {
			sb.append(" and ckid like '%").append(c.getCkid()).append("%'");
		}
		if ((null != c.getChanname()) && (!"".equals(c.getChanname()))) {
			sb.append(" and channame like '%").append(c.getChanname()).append(
					"%'");
		}
		if ((null != c.getCkname()) && (!"".equals(c.getCkname()))) {
			sb.append(" and ckname like '%").append(c.getCkname()).append(
					"%'");
		}
		if ((null != c.getCkleixing()) && (!"".equals(c.getCkleixing()))) {
			sb.append(" and ckleixing like '%").append(c.getCkleixing()).append("%'");
		}
		if ((null != c.getCktime()) && (!"".equals(c.getCktime()))) {
			sb.append(" and cktime like '%").append(c.getCktime()).append(
					"%'");
		}
		return this.chukuDao.find(sb.toString(), offset);
		
	}

	public void save(Chuku chuku) {
		this.chukuDao.save(chuku);

	}
	
	
	public ChukuDAO getChukuDao() {
		return chukuDao;
	}

	public void setChukuDao(ChukuDAO chukuDao) {
		this.chukuDao = chukuDao;
	}

	public KucunDAO getKucunDao() {
		return kucunDao;
	}

	public void setKucunDao(KucunDAO kucunDao) {
		this.kucunDao = kucunDao;
	}


}
