package com.service.impl;

import com.bean.Chanpin;
import com.bean.Jingzheng;
import com.dao.JingzhengDAO;
import com.service.JingzhengService;
import com.util.PageModel;

public class JingzhengServiceImpl implements JingzhengService {
	private JingzhengDAO jingzhengDao;

	public JingzhengDAO getJingzhengDao() {
		return jingzhengDao;
	}

	public void setJingzhengDao(JingzhengDAO jingzhengDao) {
		this.jingzhengDao = jingzhengDao;
	}

	public void delete(Jingzheng jingzheng) {
		this.jingzhengDao.delete(jingzheng);

	}

	public Jingzheng findById(int id) {
		return this.jingzhengDao.findById(id);
	}

	public PageModel findStr(Jingzheng j, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Jingzheng where 1=1 ");
		 if((null!=j.getJingid())&&(!"".equals(j.getJingid()))){
			 sb.append(" and jingid like '%").append(j.getJingid()).append("%'");
		 }
		 if((null!=j.getJingname())&&(!"".equals(j.getJingname()))){
			 sb.append(" and jingname like '%").append(j.getJingname()).append("%'");
		 }
		 if((null!=j.getLeixing())&&(!"".equals(j.getLeixing()))){
			 sb.append(" and leixing like '%").append(j.getLeixing()).append("%'");
		 }
		 if((null!=j.getJilutime())&&(!"".equals(j.getJilutime()))){
			 sb.append(" and jilutime like '%").append(j.getJilutime()).append("%'");
		 }
		 if((null!=j.getJingzhengli())&&(!"".equals(j.getJingzhengli()))){
			 sb.append(" and jingzhengli like '%").append(j.getJingzhengli()).append("%'");
		 }
		 if((null!=j.getQuyu())&&(!"".equals(j.getQuyu()))){
			 sb.append(" and quyu like '%").append(j.getQuyu()).append("%'");
		 }
		 return (PageModel)this.jingzhengDao.findStr(sb.toString(), offset);
	}

	public PageModel findall(int offset) {
		
		return this.jingzhengDao.findall(offset);
	}

	public void save(Jingzheng jingzheng) {

		this.jingzhengDao.save(jingzheng);
	}

	public void update(Jingzheng jingzheng) {

		this.jingzhengDao.update(jingzheng);
	}

	public String find(String jingid) {
		String sql="from Jingzheng where jingid='"+jingid+"'";
		Jingzheng jingzheng=this.jingzhengDao.find(sql);
		if(jingzheng==null){
			return "";
		}else{
			return "竞争公司编号已存在";
		}
	}

}
