package com.service.impl;

import com.bean.Kucun;
import com.bean.Ruku;
import com.dao.KucunDAO;
import com.dao.RukuDAO;
import com.service.RukuService;
import com.util.PageModel;

public class RukuServiceImpl implements RukuService {
	private RukuDAO rukuDao;
	private KucunDAO kucunDao;

	
	public void delete(Ruku ruku) {
		
		this.rukuDao.delete(ruku);
	}

	public Ruku findById(int id) {
		return this.rukuDao.findById(id);
	}

	public PageModel findall(int offset) {
		StringBuffer sb=new StringBuffer();
		sb.append("from Ruku order by id desc");
		return this.rukuDao.find(sb.toString(), offset);
	}

	public Kucun findkucun(String kcid) {
		return this.kucunDao.findByKcid("from Kucun where kcid='"+kcid+"'");
	}

	public PageModel findstr(Ruku r, int offset) {
		StringBuffer sb = new StringBuffer();
		sb.append("from Ruku where 1=1 ");
		if ((null != r.getRkid()) && (!"".equals(r.getRkid()))) {
			sb.append(" and rkid like '%").append(r.getRkid()).append("%'");
		}
		if ((null != r.getChanname()) && (!"".equals(r.getChanname()))) {
			sb.append(" and channame like '%").append(r.getChanname()).append(
					"%'");
		}
		if ((null != r.getCkname()) && (!"".equals(r.getCkname()))) {
			sb.append(" and ckname like '%").append(r.getCkname()).append(
					"%'");
		}
		if ((null != r.getRkleixing()) && (!"".equals(r.getRkleixing()))) {
			sb.append(" and rkleixing like '%").append(r.getRkleixing()).append("%'");
		}
		if ((null != r.getRktime()) && (!"".equals(r.getRktime()))) {
			sb.append(" and rktime like '%").append(r.getRktime()).append(
					"%'");
		}
		return this.rukuDao.find(sb.toString(), offset);
	}

	public void save(Ruku ruku) {

		this.rukuDao.save(ruku);
	}
	
	
	public RukuDAO getRukuDao() {
		return rukuDao;
	}

	public void setRukuDao(RukuDAO rukuDao) {
		this.rukuDao = rukuDao;
	}

	public KucunDAO getKucunDao() {
		return kucunDao;
	}

	public void setKucunDao(KucunDAO kucunDao) {
		this.kucunDao = kucunDao;
	}


}
