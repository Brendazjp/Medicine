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

public class TuidanAction extends ActionSupport {
	private XiaoshouService xiaoshouService;
	private Xiaoshou xiaoshou;
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
	/*
	 * 显示所有退单的信息
	 */
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
		         if(offset<0){
		    		 offset=0;
		    	 } 
		         PageModel pm=this.xiaoshouService.findshow("退单", offset);
		         ActionContext.getContext().put("pm", pm);
		         return "show";
    	}else{
    		return "no";
    	}
	}
	/*
	 * 显示某条退单的详细信息
	 */
	public String showone() throws Exception{
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
		ActionContext.getContext().put("xiaoshou",xiaoshou);
		return "showone";
	}
	/*
	 * 显示某条退单的详细信息，为下面的修改做准备
	 */
	public String showone1() throws Exception{
		xiaoshou=this.xiaoshouService.findById(xiaoshou.getId());
		ActionContext.getContext().put("xiaoshou",xiaoshou);
		return "showone1";
	}
	/*
	 * 修改退单信息
	 */
	public String update() throws Exception{
		this.xiaoshouService.update(xiaoshou);
		return "sud";
	}
	/*
	 * 执行一次空跳转，解决路迳问题
	 */
	public String zhuan() throws Exception{
		
		return "zhuan";
	}
	public String find() throws Exception{
		int offset=0;
		HttpServletRequest req=ServletActionContext.getRequest();
		try{
			offset=Integer.parseInt(req.getParameter("pager.offset"));
		}catch (Exception e) {
		}
		if(offset<0)
		{
			offset=0;
		}
		PageModel pm=this.xiaoshouService.find(xiaoshou, offset);
		ActionContext.getContext().put("pm", pm);
		return "find";
	}
	

}
