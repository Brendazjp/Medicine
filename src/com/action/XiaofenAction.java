package com.action;

import org.apache.struts2.ServletActionContext;

import com.bean.User;
import com.opensymphony.xwork2.ActionSupport;
import com.service.XiaoshouService;

public class XiaofenAction extends ActionSupport {
	private XiaoshouService xiaoshouService;
	private String zhuangtai;
	private int leibie;
	private String year;
	private String month;
	/*
	 * 对销售分析的权限控制
	 */
	public String zhuan() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==4)||(a==0)){
    		return "fenxi";
    	}
    	else{
    		return "no";
    	}
	}
	/*
	 * 销售的分析（按产品类别或地区分析）
	 */
	public String fenxi() throws Exception {
		this.xiaoshouService.fenxi(zhuangtai, leibie, year, month);
		return "fenxi";
	}
	
	
	
	public String getZhuangtai() {
		return zhuangtai;
	}
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	public int getLeibie() {
		return leibie;
	}
	public void setLeibie(int leibie) {
		this.leibie = leibie;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}



	public XiaoshouService getXiaoshouService() {
		return xiaoshouService;
	}



	public void setXiaoshouService(XiaoshouService xiaoshouService) {
		this.xiaoshouService = xiaoshouService;
	}
	

}
