package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Chanpin;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ChanpinService;
import com.util.PageModel;

public class ChanpinAction extends ActionSupport {
	private ChanpinService chanpinService;
	private Chanpin chanpin;
 
	public Chanpin getChanpin() {
		return chanpin;
	}

	public void setChanpin(Chanpin chanpin) {
		this.chanpin = chanpin;
	}

	public ChanpinService getChanpinService() {
		return chanpinService;
	}

	public void setChanpinService(ChanpinService chanpinService) {
		this.chanpinService = chanpinService;
	}
	
    /**
     * 添加在线产品信息
     * @return
     * @throws Exception
     */
	public String save() throws Exception {
		chanpin.setXiatime("");  //当添加新的产品时，要把下线时间为空，他总保存上次添加下线时间的结果，因为是通过对象传递的
        chanpin.setXiayanyin(""); //当添加新的产品时，要把下线原因为空，他总保存上次添加下线原因的结果，因为是通过对象传递的
		this.chanpinService.save(chanpin);
		PageModel pm=this.chanpinService.findall(0, 0); //前面的0在线产品为标志位，后面的0为从哪条记录开始查找
        ActionContext.getContext().put("pm", pm);
		return "showshang";
	}
	 
	/**
	 * 显示所有在线的产品信息
	 * @return
	 * @throws Exception
	 */
	public String showshang() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==1)||(a==0)||(a==4)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 }  
		         PageModel pm=this.chanpinService.findall(0, offset);   //标志位为0的在线产品
		         ActionContext.getContext().put("pm", pm);
				return "showshang";
    	}else{
    		return "no";
    	}
	}
	
	/**
	 * 显示在线产品高级查询的结果
	 * @return
	 * @throws Exception
	 */
	public String findshang() throws Exception {
    	int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset= Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {
         }   
         if(offset<0){
    		 offset=0;
    	 }
         //这里我按照每页显示15条   
         PageModel pm=this.chanpinService.findstr(chanpin, offset);
         ActionContext.getContext().put("pm", pm);
		return "findshang";
    }
	
	/**
	 * 显示单个产品的信息
	 * @return
	 * @throws Exception
	 */
	public String showone() throws Exception{
	    chanpin=this.chanpinService.findById(chanpin.getId());
	    ActionContext.getContext().put("chanpin", chanpin);
	    return "showone";
	}
	
	/**
	 * 显示并修改单个产品的信息
	 * @return
	 * @throws Exception
	 */
	public String showone1() throws Exception{
	    chanpin=this.chanpinService.findById(chanpin.getId());
	    ActionContext.getContext().put("chanpin", chanpin);
	    return "showone1";
	}
	public String update() throws Exception {
		this.chanpinService.update(chanpin);
		if(chanpin.getBiaozhi()==0){
			PageModel pm=this.chanpinService.findall(0, 0);
		    ActionContext.getContext().put("pm", pm);
			return "showshang";
		}else{
			PageModel pm=this.chanpinService.findall(1, 0);
		    ActionContext.getContext().put("pm", pm);
			return "showxia";
		}
	}
	
	/**
	 * 显示并添加产品的下线时间和下线原因
	 * @return
	 * @throws Exception
	 */
	public String showone2() throws Exception{
	    chanpin=this.chanpinService.findById(chanpin.getId());
	    ActionContext.getContext().put("chanpin", chanpin);
	    return "showone2";
	}
	/**
	 * 将在线产品信息改为下线产品信息及执行产品下线
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception {
		this.chanpinService.update(chanpin);
			PageModel pm=this.chanpinService.findall(0, 0);
	        ActionContext.getContext().put("pm", pm);
			return "showshang";
	}
	
	/**
	 * 显示所有下线产品
	 * @return
	 * @throws Exception
	 */
	public String showxia() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==1)||(a==0)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 }
		         PageModel pm=this.chanpinService.findall(1, offset);     //标志位为1的下线产品
		         ActionContext.getContext().put("pm", pm);
				return "showxia";
    	}else{
    		return "no";
    	}
	}
	
	/**
	 * 显示下线产品高级查询的结果
	 * @return
	 * @throws Exception
	 */
	public String findxia() throws Exception {
    	int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset= Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }   
         if(offset<0){
    		 offset=0;
    	 }
         PageModel pm=this.chanpinService.findstr(chanpin, offset);
         ActionContext.getContext().put("pm", pm);
		return "findxia";
    }
	 
	
	

}
