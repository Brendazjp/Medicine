package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Fuwu;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.FuwuService;
import com.util.PageModel;

public class TousuAction extends ActionSupport {
	private FuwuService fuwuService;
	private Fuwu fuwu;
	
	public String show() throws Exception {
		int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset = Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }   
         if(offset<0){
    		 offset=0;
    	 }
         PageModel pm=this.fuwuService.findall(0, offset);   //服务类别为投诉的为0；
         ActionContext.getContext().put("pm", pm);
         return "show";
	}
	public String showone() throws Exception{
		fuwu=this.fuwuService.findById(fuwu.getId());
		ActionContext.getContext().put("fuwu",fuwu);
		return "showone";
	}
	public String showone1() throws Exception{
		fuwu=this.fuwuService.findById(fuwu.getId());
		ActionContext.getContext().put("fuwu",fuwu);
		return "showone1";
	}
	public String update() throws Exception{
		this.fuwuService.update(fuwu);
		return "sud";
	}
	public String delete() throws Exception{
		Fuwu fuwu1=this.fuwuService.findById(fuwu.getId());
		this.fuwuService.delete(fuwu1);
		return "sud";
	}
	public String zhuan() throws Exception{
		return "zhuan";
	}
	public String find() throws Exception{
		int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset = Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }  
         if(offset<0){
    		 offset=0;
    	 }
         PageModel pm=this.fuwuService.findstr(fuwu, offset);   
         ActionContext.getContext().put("pm", pm);
         return "show1";
	}
	
	
	
	
	
	
	
	public FuwuService getFuwuService() {
		return fuwuService;
	}
	public void setFuwuService(FuwuService fuwuService) {
		this.fuwuService = fuwuService;
	}
	public Fuwu getFuwu() {
		return fuwu;
	}
	public void setFuwu(Fuwu fuwu) {
		this.fuwu = fuwu;
	}

}
