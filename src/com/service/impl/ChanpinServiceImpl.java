package com.service.impl;

import com.bean.Chanpin;
import com.dao.ChanpinDAO;
import com.service.ChanpinService;
import com.util.PageModel;

public class ChanpinServiceImpl implements ChanpinService {
	private ChanpinDAO chanpinDao;

	public ChanpinDAO getChanpinDao() {
		return chanpinDao;
	}

	public void setChanpinDao(ChanpinDAO chanpinDao) {
		this.chanpinDao = chanpinDao;
	}

	public Chanpin findById(int id) {
		return (Chanpin) this.chanpinDao.findById(id);
	}

	public void save(Chanpin chanpin) {
		this.chanpinDao.save(chanpin);

	}

	public void update(Chanpin chanpin) {

		this.chanpinDao.update(chanpin);
	}

	public PageModel findall(int biaozhi, int offset) {
		StringBuffer sb = new StringBuffer();
		sb.append("from Chanpin where 1=1 ");
		sb.append("and biaozhi=").append(biaozhi);
		sb.append("order by id desc");
		return (PageModel) this.chanpinDao.findall(sb.toString(), offset);
	}

	public PageModel findstr(Chanpin c, int offset) {
		StringBuffer sb = new StringBuffer();
		sb.append("from Chanpin where 1=1 ");
		if ((null != c.getChanid()) && (!"".equals(c.getChanid()))) {
			sb.append(" and chanid like '%").append(c.getChanid()).append("%'");
		}
		if ((null != c.getChanname()) && (!"".equals(c.getChanname()))) {
			sb.append(" and channame like '%").append(c.getChanname()).append(
					"%'");
		}
		if ((null != c.getPiwenhao()) && (!"".equals(c.getPiwenhao()))) {
			sb.append(" and piwenhao like '%").append(c.getPiwenhao()).append(
					"%'");
		}
		if ((null != c.getGuige()) && (!"".equals(c.getGuige()))) {
			sb.append(" and guige like '%").append(c.getGuige()).append("%'");
		}
		if ((null != c.getLeixing()) && (!"".equals(c.getLeixing()))) {
			sb.append(" and leixing like '%").append(c.getLeixing()).append(
					"%'");
		}
		if ((null != c.getJixing()) && (!"".equals(c.getJixing()))) {
			sb.append(" and jixing like '%").append(c.getJixing()).append("%'");
		}
		if ((null != c.getYouxiaoqi()) && (!"".equals(c.getYouxiaoqi()))) {
			sb.append(" and youxiaoqi like '%").append(c.getYouxiaoqi())
					.append("%'");
		}
		if ((null != c.getShangtime()) && (!"".equals(c.getShangtime()))) {
			sb.append(" and shangtime like '%").append(c.getShangtime())
					.append("%'");
		}
		if ((null != c.getXiatime()) && (!"".equals(c.getXiatime()))) {
			sb.append(" and xiatime like '%").append(c.getXiatime())
					.append("%'");
		}
		if ((null != (Integer) c.getBiaozhi()) && (!"".equals(c.getBiaozhi()))) {
			sb.append(" and biaozhi like '%").append(c.getBiaozhi()).append(
					"%'");
		}
		return (PageModel) this.chanpinDao.findall(sb.toString(), offset);

	}

	public String find(String chanid) {
		String sql="from Chanpin where chanid='"+chanid+"'";
		Chanpin chanpin=this.chanpinDao.findByChanid(sql);
		if(chanpin==null){
			return "";
		}else{
			return "产品编号已存在";
		}
	}

}
