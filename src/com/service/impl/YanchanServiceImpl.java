package com.service.impl;

import com.bean.Yanchan;
import com.dao.YanchanDAO;
import com.service.YanchanService;
import com.util.PageModel;

public class YanchanServiceImpl implements YanchanService {
	private YanchanDAO yanchanDAO;
	public YanchanDAO getYanchanDAO() {
		return yanchanDAO;
	}

	public void setYanchanDAO(YanchanDAO yanchanDAO) {
		this.yanchanDAO = yanchanDAO;
	}

	public void delete(Yanchan yanchan) {
		this.yanchanDAO.delete(yanchan);

	}

	public Yanchan findById(int id) {
		
		return this.yanchanDAO.findById(id);
	}

	public void save(Yanchan yanchan) {
		this.yanchanDAO.save(yanchan);

	}

	public void update(Yanchan yanchan) {
		this.yanchanDAO.update(yanchan);

	}
	public PageModel findall(int offset) {

		return this.yanchanDAO.findall(offset);
	}
	public PageModel findstr(Yanchan y,int offset){
		 StringBuffer sb= new StringBuffer();
		 sb.append("from Yanchan where 1=1 ");
		 if((null!=y.getYanchanid())&&(!"".equals(y.getYanchanid()))){
			 sb.append(" and yanchanid like '%").append(y.getYanchanid()).append("%'");
		 }
		 if((null!=y.getYanchaname())&&(!"".equals(y.getYanchaname()))){
			 sb.append(" and yanchaname like '%").append(y.getYanchaname()).append("%'");
		 }
		 if((null!=y.getYanjin())&&(!"".equals(y.getYanjin()))){
			 sb.append(" and yanjin like '%").append(y.getYanjin()).append("%'");
		 }
		 if((null!=y.getYanrenshu())&&(!"".equals(y.getYanrenshu()))){
			 sb.append(" and yanrenshu like '%").append(y.getYanrenshu()).append("%'");
		 }
		 if((null!=y.getYanchanlei())&&(!"".equals(y.getYanchanlei()))){
			 sb.append(" and yanchanlei like '%").append(y.getYanchanlei()).append("%'");
		 }
		 if((null!=y.getYanfuid())&&(!"".equals(y.getYanfuid()))){
			 sb.append(" and yanfuid like '%").append(y.getYanfuid()).append("%'");
		 }
		 if((null!=y.getYanfuname())&&(!"".equals(y.getYanfuname()))){
			 sb.append(" and yanfuname like '%").append(y.getYanfuname()).append("%'");
		 }
		 if((null!=y.getYanfulianxi())&&(!"".equals(y.getYanfulianxi()))){
			 sb.append(" and yanfulianxi like '%").append(y.getYanfulianxi()).append("%'");
		 }
		 if((null!=y.getYankatime())&&(!"".equals(y.getYankatime()))){
			 sb.append(" and yankatime like '%").append(y.getYankatime()).append("%'");
		 }
		 if((null!=y.getYanjietime())&&(!"".equals(y.getYanjietime()))){
			 sb.append(" and yanjietime like '%").append(y.getYanjietime()).append("%'");
		 }
		 return (PageModel)this.yanchanDAO.findStr(sb.toString(), offset);
		 
	}

	public String find(String yanchanid) {
		String sql="from Yanchan where yanchanid='"+yanchanid+"'";
		Yanchan yanchan=this.yanchanDAO.find(sql);
		if(yanchan==null){
			return "";
		}else{
			return "研发产品编号已存在";
		}
	}

}
