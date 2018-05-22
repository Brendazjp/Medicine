package com.service.impl;

import com.bean.Chanpin;
import com.bean.Shichang;
import com.dao.ShichangDAO;
import com.service.ShichangService;
import com.util.PageModel;

public class ShichangServiceImpl implements ShichangService {
	private ShichangDAO shichangDao;

	public Shichang findById(int id) {
		
		return this.shichangDao.findById(id);
	}

	public PageModel findStr(Shichang s, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Shichang where 1=1 ");
		 if((null!=s.getShichangid())&&(!"".equals(s.getShichangid()))){
			 sb.append(" and shichangid like '%").append(s.getShichangid()).append("%'");
		 }
		 if((null!=s.getDiqu())&&(!"".equals(s.getDiqu()))){
			 sb.append(" and diqu like '%").append(s.getDiqu()).append("%'");
		 }
		 if((null!=s.getChengshi())&&(!"".equals(s.getChengshi()))){
			 sb.append(" and chengshi like '%").append(s.getChengshi()).append("%'");
		 }
		 if((null!=s.getJingji())&&(!"".equals(s.getJingji()))){
			 sb.append(" and jingji like '%").append(s.getJingji()).append("%'");
		 }
		 if((null!=s.getJieri())&&(!"".equals(s.getJieri()))){
			 sb.append(" and jieri like '%").append(s.getJieri()).append("%'");
		 }
		 if((null!=s.getFuname())&&(!"".equals(s.getFuname()))){
			 sb.append(" and funame like '%").append(s.getFuname()).append("%'");
		 }
		 if((null!=s.getFulianxi())&&(!"".equals(s.getFulianxi()))){
			 sb.append(" and fulianxi like '%").append(s.getFulianxi()).append("%'");
		 }
		 return (PageModel)this.shichangDao.findStr(sb.toString(), offset);
	}

	public PageModel findall(int offset) {
		
		return this.shichangDao.findall(offset);
	}

	public void save(Shichang shichang) {

		this.shichangDao.save(shichang);
	}

	public void update(Shichang shichang) {
		this.shichangDao.update(shichang);

	}
	public String find(String shichangid) {
		String sql="from Shichang where shichangid='"+shichangid+"'";
		Shichang shichang=this.shichangDao.find(sql);
		if(shichang==null){
			return "";
		}else{
			return "市场编号已存在";
		}
	}
	
	
	
	

	public ShichangDAO getShichangDao() {
		return shichangDao;
	}

	public void setShichangDao(ShichangDAO shichangDao) {
		this.shichangDao = shichangDao;
	}

	

}
