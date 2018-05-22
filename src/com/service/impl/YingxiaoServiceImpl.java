package com.service.impl;

import com.bean.Yingxiao;
import com.dao.YingxiaoDAO;
import com.service.YingxiaoService;
import com.util.PageModel;

public class YingxiaoServiceImpl implements YingxiaoService {

	private YingxiaoDAO yingxiaoDao;

	public YingxiaoDAO getYingxiaoDao() {
		return yingxiaoDao;
	}

	public void setYingxiaoDao(YingxiaoDAO yingxiaoDao) {
		this.yingxiaoDao = yingxiaoDao;
	}

	public void delete(Yingxiao yingxiao) {
		this.yingxiaoDao.delete(yingxiao);

	}

	public Yingxiao findById(int id) {
		return (Yingxiao)this.yingxiaoDao.findById(id);
	}

	public PageModel findStr(Yingxiao y, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Yingxiao where 1=1 ");
		 if((null!=y.getYingid())&&(!"".equals(y.getYingid()))){
			 sb.append(" and yingid like '%").append(y.getYingid()).append("%'");
		 }
		 if((null!=y.getYingname())&&(!"".equals(y.getYingname()))){
			 sb.append(" and yingname like '%").append(y.getYingname()).append("%'");
		 }
		 if((null!=y.getChanleixing())&&(!"".equals(y.getChanleixing()))){
			 sb.append(" and chanleixing like '%").append(y.getChanleixing()).append("%'");
		 }
		 if((null!=y.getYingtime())&&(!"".equals(y.getYingtime()))){
			 sb.append(" and yingtime like '%").append(y.getYingtime()).append("%'");
		 }
		 if((null!=y.getYingfuname())&&(!"".equals(y.getYingfuname()))){
			 sb.append(" and yingfuname like '%").append(y.getYingfuname()).append("%'");
		 }
		 if((null!=y.getYinglianxi())&&(!"".equals(y.getYinglianxi()))){
			 sb.append(" and yinglianxi like '%").append(y.getYinglianxi()).append("%'");
		 }
		 if((null!=y.getYingrenshu())&&(!"".equals(y.getYingrenshu()))){
			 sb.append(" and yingrenshu like '%").append(y.getYingrenshu()).append("%'");
		 }
		 if((null!=y.getDiqu())&&(!"".equals(y.getDiqu()))){
			 sb.append(" and diqu like '%").append(y.getDiqu()).append("%'");
		 }
		 return (PageModel)this.yingxiaoDao.findStr(sb.toString(), offset);
	}

	public PageModel findall(int offset) {
		return this.yingxiaoDao.findall(offset);
	}

	public void save(Yingxiao yingxiao) {

		this.yingxiaoDao.save(yingxiao);
	}

	public void update(Yingxiao yingxiao) {

		this.yingxiaoDao.update(yingxiao);
	}

}
