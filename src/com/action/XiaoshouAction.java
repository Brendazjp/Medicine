package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Chanpin;
import com.bean.Kehu;
import com.bean.User;
import com.bean.Xiaoshou;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.XiaoshouService;
import com.util.PageModel;

public class XiaoshouAction extends ActionSupport {
	private XiaoshouService xiaoshouService;
	private Xiaoshou xiaoshou;
	private Kehu kehu;
	private Chanpin chanpin;
	private String zhuangtai;
	
	public String showinsert() throws Exception {
		chanpin=this.xiaoshouService.findChan(chanpin.getId());
        ActionContext.getContext().put("chanpin",chanpin);		
		return "showinsert";
	}
	public String save() throws Exception{
		xiaoshou.setShenpiren("");//当添加新订单时，要把审批人为空，他总保存上次添加审批人的结果，因为是通过对象传递的
		xiaoshou.setNoyanyin("");
		xiaoshou.setFatime("");
		xiaoshou.setWuliu("");
		xiaoshou.setTdtime("");
		xiaoshou.setTdyanyin("");
		xiaoshou.setThtime("");
		xiaoshou.setThyanyin("");
		chanpin=this.xiaoshouService.findChan(chanpin.getId());
		xiaoshou.setChanpin(chanpin);
		kehu=this.xiaoshouService.findKehu(xiaoshou.getKehu().getKehuid());
		xiaoshou.setKehu(kehu);
		this.xiaoshouService.save(xiaoshou);
		return "sud";
	}
	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==4)||(a==0)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }  
		         if(offset<0) {
		        	 offset = 0;
		         }
		         //这里我按照每页显示15条   
		         PageModel pm=this.xiaoshouService.findall(offset);
		         ActionContext.getContext().put("pm", pm);
		         return "show";
    	}else{
    		return "no";
    	}
	}
	public String showone() throws Exception{
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
		ActionContext.getContext().put("xiaoshou",xiaoshou);
		return "showone";
	}
	public String showone1() throws Exception{
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
		ActionContext.getContext().put("xiaoshou",xiaoshou);
		return "showone1";
	}
	public String update() throws Exception{
		this.xiaoshouService.update(xiaoshou);
		return "sud";
	}
	public String delete() throws Exception{
		Xiaoshou xiaoshou1=this.xiaoshouService.findById(xiaoshou.getId());
		this.xiaoshouService.delete(xiaoshou1);
		return "sud";
	}
	public String showonefh() throws Exception {
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
        ActionContext.getContext().put("xiaoshou",xiaoshou);		
		return "showonefh";
	}
	public String showonetd() throws Exception {
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
        ActionContext.getContext().put("xiaoshou",xiaoshou);		
		return "showonetd";
	}
	/**
	 * 显示所有等待审批的记录
	 * @return
	 * @throws Exception
	 */
	public String show1() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if(a==0){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {
		         }   
		         if(offset<0) {
		        	 offset = 0;
		         }
		         PageModel pm=this.xiaoshouService.findshow("等待审批", offset);
		         ActionContext.getContext().put("pm", pm);
		         return "show1";
    	}else{
    		return "no";
    	}
	}
	public String showoneshen() throws Exception{
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
		ActionContext.getContext().put("xiaoshou", xiaoshou);
		return "showoneshen";
	}
	public String update1() throws Exception{
		xiaoshou.setZhuangtai(zhuangtai);
		this.xiaoshouService.update(xiaoshou);
		return "update1";
	}
	

	
	
	
	
	
	public Kehu getKehu() {
		return kehu;
	}

	public void setKehu(Kehu kehu) {
		this.kehu = kehu;
	}

	public Chanpin getChanpin() {
		return chanpin;
	}

	public void setChanpin(Chanpin chanpin) {
		this.chanpin = chanpin;
	}

	public Xiaoshou getXiaoshou() {
		return xiaoshou;
	}

	public void setXiaoshou(Xiaoshou xiaoshou) {
		this.xiaoshou = xiaoshou;
	}

	public XiaoshouService getXiaoshouService() {
		return xiaoshouService;
	}

	public void setXiaoshouService(XiaoshouService xiaoshouService) {
		this.xiaoshouService = xiaoshouService;
	}
	public String getZhuangtai() {
		return zhuangtai;
	}
	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}
	

}
