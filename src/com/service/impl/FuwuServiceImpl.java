package com.service.impl;

import com.bean.Fuwu;
import com.bean.Kehu;
import com.dao.FuwuDAO;
import com.dao.KehuDAO;
import com.service.FuwuService;
import com.util.PageModel;

public class FuwuServiceImpl implements FuwuService {
	private FuwuDAO fuwuDao;
	private KehuDAO kefuDao;

	public Fuwu findById(int id) {
		
		return this.fuwuDao.findById(id);
	}

	public PageModel findall(int fuleibei, int offset) {
		String sql="from Fuwu f where f.fuleibei="+fuleibei+" order by f.id desc";
		return this.fuwuDao.find(sql, offset);
	}

	public Kehu findke(int id) {
		
		return this.kefuDao.findById(id);
	}

	public PageModel findstr(Fuwu f, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Fuwu where 1=1 ");
		 if((null!=f.getKehu().getKehuid())&&(!"".equals(f.getKehu().getKehuid()))){
			 sb.append(" and kehu.kehuid like '%").append(f.getKehu().getKehuid()).append("%'");
		 }
		 if((null!=f.getKehu().getKename())&&(!"".equals(f.getKehu().getKename()))){
			 sb.append(" and kehu.kename like '%").append(f.getKehu().getKename()).append("%'");
		 }
		 if((null!=f.getFuwuid())&&(!"".equals(f.getFuwuid()))){
			 sb.append(" and fuwuid like '%").append(f.getFuwuid()).append("%'");
		 }
		 if((null!=f.getFutime())&&(!"".equals(f.getFutime()))){
			 sb.append(" and futime like '%").append(f.getFutime()).append("%'");
		 }
		 if((null!=f.getJiluren())&&(!"".equals(f.getJiluren()))){
			 sb.append(" and jiluren like '%").append(f.getJiluren()).append("%'");
		 }if((null!=(Integer)f.getFuleibei())&&(!"".equals(f.getFuleibei()))){
			 sb.append(" and fuleibei like '%").append(f.getFuleibei()).append("%'");
		 }
		 return (PageModel)this.fuwuDao.find(sb.toString(), offset);
	}

	public void save(Fuwu fuwu) {

		this.fuwuDao.save(fuwu);
	}

	public void update(Fuwu fuwu) {

		this.fuwuDao.update(fuwu);
	}
	public void delete(Fuwu fuwu){
		this.fuwuDao.delete(fuwu);
		
	}
	

	
	
	
	public FuwuDAO getFuwuDao() {
		return fuwuDao;
	}

	public void setFuwuDao(FuwuDAO fuwuDao) {
		this.fuwuDao = fuwuDao;
	}

	public KehuDAO getKefuDao() {
		return kefuDao;
	}

	public void setKefuDao(KehuDAO kefuDao) {
		this.kefuDao = kefuDao;
	}

}
