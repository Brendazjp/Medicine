package com.action;

import javax.print.attribute.standard.Severity;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.User;
import com.bean.Xiaoshou;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.XiaoshouService;
import com.util.PageModel;

public class TuihuoAction extends ActionSupport {
	private XiaoshouService xiaoshouService;
	private Xiaoshou xiaoshou;
	/*
	 * 显示所有退货信息
	 */
	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==4)||(a==0)){
				int offset=0;
				HttpServletRequest req=ServletActionContext.getRequest();
				try{
					offset=Integer.parseInt(req.getParameter("pager.offset"));
				}catch(Exception e){
					
				}
				if(offset<0){
					offset=0;
				}
				PageModel pm=this.xiaoshouService.findshow("退货", offset);
				ActionContext.getContext().put("pm",pm);
				return "show";
    	}else{
    		return "no";
    	}
	}
	/*
	 * 显示某条退货记录的详细信息，跳转到详细信息页
	 */
	public String showone() throws Exception{
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
		ActionContext.getContext().put("xiaoshou",xiaoshou);
		return "showone";
	}
	/*
	 * 显示某条退货记录的详细信息，并跳转到修改退货信息页
	 */
	public String showone1() throws Exception{
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
		ActionContext.getContext().put("xiaoshou",xiaoshou);
		return "showone1";
	}
	/*
	 * 修改某条退货信息
	 */
	public String update() throws Exception{
		this.xiaoshouService.update(xiaoshou);
		return "sud";
	}
	/*
	 * 执行一次空跳转，解决路径问题
	 */
	public String zhuan() throws Exception{
		return "zhuan";
	}
	/*
	 * 
	 */
	public String find() throws Exception{
		int offset =0;
		HttpServletRequest req= ServletActionContext.getRequest();
		try{
			offset=Integer.parseInt(req.getParameter("pager.offset"));
		}catch(Exception e){
			
		}
		if(offset<0){
			offset=0;
		}
		PageModel pm=this.xiaoshouService.find(xiaoshou, offset);
		ActionContext.getContext().put("pm", pm);
		return "find";
	}

	
	
	public XiaoshouService getXiaoshouService() {
		return xiaoshouService;
	}
	public void setXiaoshouService(XiaoshouService xiaoshouService) {
		this.xiaoshouService = xiaoshouService;
	}
	public Xiaoshou getXiaoshou() {
		return xiaoshou;
	}
	public void setXiaoshou(Xiaoshou xiaoshou) {
		this.xiaoshou = xiaoshou;
	}

}
