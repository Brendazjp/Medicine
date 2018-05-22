package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Jingzheng;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.JingzhengService;
import com.util.PageModel;

public class JingzhengAction extends ActionSupport {
	private JingzhengService jingzhengService;
	private Jingzheng jingzheng;
	public JingzhengService getJingzhengService() {
		return jingzhengService;
	}
	public void setJingzhengService(JingzhengService jingzhengService) {
		this.jingzhengService = jingzhengService;
	}
	public Jingzheng getJingzheng() {
		return jingzheng;
	}
	public void setJingzheng(Jingzheng jingzheng) {
		this.jingzheng = jingzheng;
	}
	
	  /**
	   * 添加竞争公司信息
	   * @return
	   * @throws Exception
	   */
	public String save() throws Exception  {
        this.jingzhengService.save(jingzheng);
        PageModel pm=this.jingzhengService.findall(0);
        ActionContext.getContext().put("pm", pm);
		return "show";
	} 
	
      /**
       * 显示所有竞争公司的信息，并进行分页处理
       * @return
       * @throws Exception
       */
	public String show() throws Exception {
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==3)||(a==0)){
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
		         PageModel pm=this.jingzhengService.findall(offset);
		         ActionContext.getContext().put("pm", pm);
				return "show";
    	}else{
    		return "no";
    	}
	}
	
      /**
       * 通过ID显示竞争公司的详细信息，并跳转到详细信息页
       * @return
       * @throws Exception
       */
	public String showone() throws Exception{
		jingzheng=this.jingzhengService.findById(jingzheng.getId());
		ActionContext.getContext().put("jingzheng",jingzheng);
		return "showone";
	}
	/**
     * 通过ID显示竞争公司的详细信息，并跳转到修改信息页，进行修改
     * @return
     * @throws Exception
     */
	public String showone1() throws Exception{
		jingzheng=this.jingzhengService.findById(jingzheng.getId());
		ActionContext.getContext().put("jingzheng",jingzheng);
		return "showone1";
	}
	/**
     * 修改上面显示过的竞争公司
     * @return
     * @throws Exception
     */
	public String update() throws Exception{
		this.jingzhengService.update(jingzheng);
		 PageModel pm=this.jingzhengService.findall(0);
         ActionContext.getContext().put("pm", pm);
         return "show";
	}
	/**
	 * 删除该记录的竞争公司
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		jingzheng=this.jingzhengService.findById(jingzheng.getId());
		this.jingzhengService.delete(jingzheng);
		PageModel pm=this.jingzhengService.findall(0);
        ActionContext.getContext().put("pm", pm);
        return "show";
	}
	/**
	 * 对竞争公司进行高级查询（可以以提供的任意一个或几个或所有字段进行模糊查询）
	 * @return
	 * @throws Exception
	 */
	public String find() throws Exception{
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
         PageModel pm=this.jingzhengService.findStr(jingzheng, offset);
         ActionContext.getContext().put("pm", pm);
		return "find";
		
	}
	
	

}
