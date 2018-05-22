package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Cangku;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.CangkuService;
import com.util.PageModel;

public class CangkuAction extends ActionSupport {
	private CangkuService cangkuService;
	private Cangku cangku;
    /**
     * 对仓库的基本信息的保存
     * @return
     * @throws Exception
     */
	public String save() throws Exception {
	    this.cangkuService.save(cangku);
		return "sud";
	}
	/**
	 * 显示所有仓库的基本信息
	 * @return
	 * @throws Exception
	 */
	public String show() throws Exception {
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==2)||(a==0)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 }  
		         PageModel pm=this.cangkuService.findall(offset);
		         ActionContext.getContext().put("pm", pm);
				return "show";
    	}else{
    		return "no";
    	}
	}
	/**
	 * 显示某条仓库的详细信息
	 * @return
	 * @throws Exception
	 */
	public String showone() throws Exception {
	    cangku=this.cangkuService.findById(cangku.getId());
	    ActionContext.getContext().put("cangku", cangku);
		return "showone";
	}
	/**
	 * 显示某条仓库的详细信息，为下面的修改做准备
	 * @return
	 * @throws Exception
	 */
	public String showone1() throws Exception {
		cangku=this.cangkuService.findById(cangku.getId());
	    ActionContext.getContext().put("cangku", cangku);
		return "showone1";
	}
	public String update() throws Exception{
		this.cangkuService.update(cangku);
		return "sud";
	}
	
	
	public CangkuService getCangkuService() {
		return cangkuService;
	}
	public void setCangkuService(CangkuService cangkuService) {
		this.cangkuService = cangkuService;
	}
	public Cangku getCangku() {
		return cangku;
	}
	public void setCangku(Cangku cangku) {
		this.cangku = cangku;
	}

}
