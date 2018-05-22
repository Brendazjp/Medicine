package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.User;
import com.bean.Yingxiao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.YingxiaoService;
import com.util.PageModel;

public class YingxiaoAction extends ActionSupport {
	private YingxiaoService yingxiaoService;
	private Yingxiao yingxiao;
	public YingxiaoService getYingxiaoService() {
		return yingxiaoService;
	}
	public void setYingxiaoService(YingxiaoService yingxiaoService) {
		this.yingxiaoService = yingxiaoService;
	}
	public Yingxiao getYingxiao() {
		return yingxiao;
	}
	public void setYingxiao(Yingxiao yingxiao) {
		this.yingxiao = yingxiao;
	}
	/**
	 * 添加营销活动信息
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception {
		this.yingxiaoService.save(yingxiao);
		 PageModel pm=this.yingxiaoService.findall(0);
         ActionContext.getContext().put("pm", pm);
		return "show";
	}
	/**
	 *显示所有营销活动信息
	 * @return
	 * @throws Exception
	 */
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
		         if(offset<0) {
		        	 offset = 0;
		         }
		         //这里我按照每页显示15条   
		         PageModel pm=this.yingxiaoService.findall(offset);
		         ActionContext.getContext().put("pm", pm);
				return "show";
    	}else{
    		return "no";
    	}
	}
	/**
	 * 通过ID显示某条营销活动的详细信息
	 * @return
	 * @throws Exception
	 */
	public String showone() throws Exception{
		yingxiao=this.yingxiaoService.findById(yingxiao.getId());
		ActionContext.getContext().put("yingxiao",yingxiao);
		return "showone";
	}

	/**
	 * 在修改页内显示营销活动的信息，为下面的update()方法做铺垫
	 * @return
	 * @throws Exception
	 */
	public String showone1() throws Exception{
		yingxiao=this.yingxiaoService.findById(yingxiao.getId());
		ActionContext.getContext().put("yingxiao",yingxiao);
		return "showone1";
	}
    /**
     * 修改营销活动信息
     * @return
     * @throws Exception
     */
    public String update() throws Exception{
    	this.yingxiaoService.update(yingxiao);
    	PageModel pm=this.yingxiaoService.findall(0);
        ActionContext.getContext().put("pm", pm);
		return "show";
    }
    /**
     * 删除某条营销活动信息
     * @return
     * @throws Exception
     */
    public String delete() throws Exception{
    	yingxiao=this.yingxiaoService.findById(yingxiao.getId());
    	this.yingxiaoService.delete(yingxiao);
    	PageModel pm=this.yingxiaoService.findall(0);
        ActionContext.getContext().put("pm", pm);
		return "show";
    	
    }
    /**
     * 对营销活动信息进行高级查询（可以以提供的任意一个或几个或所有字段进行模糊查询）
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
         PageModel pm=this.yingxiaoService.findStr(yingxiao, offset);
         ActionContext.getContext().put("pm", pm);
		return "find";
    }
	
}
