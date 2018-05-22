package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Caigou;
import com.bean.Wuliao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CaigouService;
import com.util.PageModel;

public class CaigouAction extends ActionSupport {
	private Caigou caigou;
	private CaigouService caigouService;
	
	public String save() throws Exception {
		this.caigouService.save(caigou);
		return "sud";
	}
	public String show() throws Exception {
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
         PageModel pm=this.caigouService.findall(offset);
         ActionContext.getContext().put("pm", pm);
		return "show";
	}
	public String showone() throws Exception {
		caigou=this.caigouService.findById(caigou.getId());
		ActionContext.getContext().put("caigou",caigou);
		return "showone";
	}
	public String showone1() throws Exception {
		caigou=this.caigouService.findById(caigou.getId());
		ActionContext.getContext().put("caigou",caigou);
		return "showone1";
	}
	public String update() throws Exception {
		this.caigouService.update(caigou);
		return "sud";
	}
	public String delete() throws Exception {
		Caigou caigou1=this.caigouService.findById(caigou.getId());
		this.caigouService.delete(caigou1);
		return "sud";
	}
	
	
	public Caigou getCaigou() {
		return caigou;
	}
	public void setCaigou(Caigou caigou) {
		this.caigou = caigou;
	}
	public CaigouService getCaigouService() {
		return caigouService;
	}
	public void setCaigouService(CaigouService caigouService) {
		this.caigouService = caigouService;
	}

}
