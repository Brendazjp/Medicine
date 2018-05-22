package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Kehu;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.KehuService;
import com.util.PageModel;

public class LiukeAction extends ActionSupport {
	private KehuService kehuService;
	private Kehu kehu;

	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==3)||(a==0)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 } 
		         PageModel pm=this.kehuService.findall(1, offset);   //标志位为1的流失客户
		         ActionContext.getContext().put("pm", pm);
		         return "show";
    	}else{
    		return "no";
    	}
  	}
	public String showone() throws Exception{
		kehu=this.kehuService.findById(kehu.getId());
		ActionContext.getContext().put("kehu", kehu);
		return "showone";
	}
	public String showone1() throws Exception{
		kehu=this.kehuService.findById(kehu.getId());
		ActionContext.getContext().put("kehu", kehu);
		return "showone1";
	}
	public String update() throws Exception{
		this.kehuService.update(kehu);
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
         PageModel pm=this.kehuService.findstr(kehu, offset);   
         ActionContext.getContext().put("pm", pm);
         return "find";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

	public Kehu getKehu() {
		return kehu;
	}
	public void setKehu(Kehu kehu) {
		this.kehu = kehu;
	}
	public KehuService getKehuService() {
		return kehuService;
	}

	public void setKehuService(KehuService kehuService) {
		this.kehuService = kehuService;
	}
	

}
