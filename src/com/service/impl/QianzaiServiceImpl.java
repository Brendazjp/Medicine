package com.service.impl;

import com.bean.Chanpin;
import com.bean.Qianzai;
import com.dao.QianzaiDAO;
import com.service.QianzaiService;
import com.util.PageModel;

public class QianzaiServiceImpl implements QianzaiService {
	private QianzaiDAO qianzaiDao;

	

	public QianzaiDAO getQianzaiDao() {
		return qianzaiDao;
	}

	public void setQianzaiDao(QianzaiDAO qianzaiDao) {
		this.qianzaiDao = qianzaiDao;
	}

	public void delete(Qianzai qianzai) {
		this.qianzaiDao.delete(qianzai);

	}

	public Qianzai findById(int id) {
		
		return this.qianzaiDao.findById(id);
	}

	public PageModel findStr(Qianzai q, int offset) {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Qianzai where 1=1 ");
		 if((null!=q.getQianid())&&(!"".equals(q.getQianid()))){
			 sb.append(" and qianid like '%").append(q.getQianid()).append("%'");
		 }
		 if((null!=q.getQianname())&&(!"".equals(q.getQianname()))){
			 sb.append(" and qianname like '%").append(q.getQianname()).append("%'");
		 }
		 if((null!=q.getXingzhi())&&(!"".equals(q.getXingzhi()))){
			 sb.append(" and xingzhi like '%").append(q.getXingzhi()).append("%'");
		 }
		 if((null!=q.getJilutime())&&(!"".equals(q.getJilutime()))){
			 sb.append(" and jilutime like '%").append(q.getJilutime()).append("%'");
		 }
		 if((null!=q.getChengshi())&&(!"".equals(q.getChengshi()))){
			 sb.append(" and chengshi like '%").append(q.getChengshi()).append("%'");
		 }
		 if((null!=q.getLeixing())&&(!"".equals(q.getLeixing()))){
			 sb.append(" and leixing like '%").append(q.getLeixing()).append("%'");
		 }
		 return (PageModel)this.qianzaiDao.find(sb.toString(), offset);
		
	}

	public PageModel findall(int offset) {
		String sql="from Qianzai q order by q.id desc";
		return this.qianzaiDao.find(sql, offset);
	}

	public void save(Qianzai qianzai) {
		this.qianzaiDao.save(qianzai);

	}

	public void update(Qianzai qianzai) {
		this.qianzaiDao.update(qianzai);

	}

	public String find(String qianid) {
		String sql="from Qianzai where qianid='"+qianid+"'";
		Qianzai qianzai=this.qianzaiDao.find(sql);
		if(qianzai==null){
			return "";
		}else{
			return "潜在客户编号已存在";
		}
	}

}
