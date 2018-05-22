package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.User;
import com.bean.Yanchan;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.YanchanService;
import com.util.PageModel;

public class YanchanAction extends ActionSupport {
    private YanchanService yanchanService;
    private Yanchan yanchan;
    
	public YanchanService getYanchanService() {
		return yanchanService;
	}
	public void setYanchanService(YanchanService yanchanService) {
		this.yanchanService = yanchanService;
	}
	public Yanchan getYanchan() {
		return yanchan;
	}
	public void setYanchan(Yanchan yanchan) {
		this.yanchan = yanchan;
	}
	/**
	 * 添加研发产品信息
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception {
		this.yanchanService.save(yanchan);
		PageModel pm=this.yanchanService.findall(0);
        ActionContext.getContext().put("pm", pm);
		return "show";
	}
	/**
	 * 显示所有研发产品的信息
	 * @return
	 * @throws Exception
	 */
    public String show() throws Exception {
    	User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==1)||(a==0)){
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
	         PageModel pm=this.yanchanService.findall(offset);
	         ActionContext.getContext().put("pm", pm);
			return "show";
			}
    	else{
    		return "no";
    	}
	}
    /**
     * 显示某条研发产品的详细信息
     * @return
     * @throws Exception
     */
    public String showone() throws Exception{
    	yanchan=this.yanchanService.findById(yanchan.getId());
    	ActionContext.getContext().put("yanchan", yanchan);
    	return "showone";
    }
    /**
     * 在修改页内显示某条研发产品的详细信息，在下面update()方法做铺垫
     * @return
     * @throws Exception
     */
    public String showone1() throws Exception{
    	yanchan=this.yanchanService.findById(yanchan.getId());
    	ActionContext.getContext().put("yanchan", yanchan);
        return "showone1";
    }
    /**
     * 修改研发产品信息
     * @return
     * @throws Exception
     */
    public String update() throws Exception{
    	this.yanchanService.update(yanchan);
    	PageModel pm=this.yanchanService.findall(0);
        ActionContext.getContext().put("pm", pm);
		return "show";
    }
    /**
     * 删除研发产品信息
     * @return
     * @throws Exception
     */
    public String delete() throws Exception{
    	this.yanchanService.delete(yanchan);
    	PageModel pm=this.yanchanService.findall(0);
        ActionContext.getContext().put("pm", pm);
		return "show";
    }
    /**
     * 对研发产品信息进行高级查询（可以以提供的任意一个或几个或所有字段进行模糊查询）
     * @return
     * @throws Exception
     */
    public String find() throws Exception {
    	int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset= Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }   
         
         if(offset<0) {
        	 offset = 0;
         }
         //这里我按照每页显示15条   
         PageModel pm=this.yanchanService.findstr(yanchan, offset);
         ActionContext.getContext().put("pm", pm);
		return "find";
    }
    
    
	

}
