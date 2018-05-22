package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Wuliao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.WuliaoService;
import com.util.PageModel;

public class WuliaoAction extends ActionSupport {
	private Wuliao wuliao;
	private WuliaoService wuliaoService;
	public String save() throws Exception {
		this.wuliaoService.save(wuliao);
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
         PageModel pm=this.wuliaoService.findall(offset);
         ActionContext.getContext().put("pm", pm);
		return "show";
	}
	public String showone() throws Exception {
		wuliao=this.wuliaoService.findById(wuliao.getId());
		ActionContext.getContext().put("wuliao",wuliao);
		return "showone";
	}
	public String update() throws Exception {
		this.wuliaoService.update(wuliao);
		return "sud";
	}
	public String delete() throws Exception {
		Wuliao wuliao1=this.wuliaoService.findById(wuliao.getId());
		this.wuliaoService.delete(wuliao1);
		return "sud";
	}
		
	
	
	
	
	public Wuliao getWuliao() {
		return wuliao;
	}
	public void setWuliao(Wuliao wuliao) {
		this.wuliao = wuliao;
	}
	public WuliaoService getWuliaoService() {
		return wuliaoService;
	}
	public void setWuliaoService(WuliaoService wuliaoService) {
		this.wuliaoService = wuliaoService;
	}

}
