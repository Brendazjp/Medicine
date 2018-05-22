package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Shichang;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.ShichangService;
import com.util.PageModel;

public class ShichangAction extends ActionSupport {
	private Shichang shichang;
	private ShichangService shichangSevice;
	public Shichang getShichang() {
		return shichang;
	}
	public void setShichang(Shichang shichang) {
		this.shichang = shichang;
	}
	public ShichangService getShichangSevice() {
		return shichangSevice;
	}
	public void setShichangSevice(ShichangService shichangSevice) {
		this.shichangSevice = shichangSevice;
	}
	/**
	 * 添加销售市场的基本信息
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception {
		this.shichangSevice.save(shichang);
		PageModel pm=this.shichangSevice.findall(0);
        ActionContext.getContext().put("pm", pm);
		return "show";
	}
	/**
	 * 显示所有市场信息并进行分页处理
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
		         PageModel pm=this.shichangSevice.findall(offset);
		         ActionContext.getContext().put("pm", pm);
				return "show";
    	}else{
    		return "no";
    	}
	}
	/**
	 * 通过ID显示某条市场记录的详细信息
	 * @return
	 * @throws Exception
	 */
	 public String showone() throws Exception{
	    	shichang=this.shichangSevice.findById(shichang.getId());
	    	ActionContext.getContext().put("shichang", shichang);
	    	return "showone";
	    }
	 /**
	  *通过ID显示某条市场记录的详细信息，为下修改做铺垫
	  * @return
	  * @throws Exception
	  */
	 public String showone1() throws Exception{
	    	shichang=this.shichangSevice.findById(shichang.getId());
	    	ActionContext.getContext().put("shichang", shichang);
	    	return "showone1";
	    }
	 /**
	  * 修改showone1方法显示的市场信息记录
	  * @return
	  * @throws Exception
	  */
	 public String update() throws Exception {
			this.shichangSevice.update(shichang);
			PageModel pm=this.shichangSevice.findall(0);
	        ActionContext.getContext().put("pm", pm);
			return "show";
		}
	 /**
	  * 对市场信息进行高级查询（可以以提供的任意一个或几个或所有字段进行模糊查询）
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
	         PageModel pm=this.shichangSevice.findStr(shichang, offset);
	         ActionContext.getContext().put("pm", pm);
			return "find";
	    }
	

}
