package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Shoukuan;
import com.bean.Tuikuan;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.TuikuanService;
import com.util.PageModel;

public class TuikuanAction extends ActionSupport {
	private TuikuanService tuikuanService;
	private Tuikuan tuikuan;
	private String xiaoid;
	/*
	 * 保存退款信息
	 */
	public String save() throws Exception {
		Shoukuan shoukuan=this.tuikuanService.find(xiaoid);
		tuikuan.setShoukuan(shoukuan);
		this.tuikuanService.save(tuikuan);
		return "sud";
	}
	/*
	 * 显示所有退款信息
	 */
	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int a=user.getQuanxian();
    	if((a==4)||(a==0)){
				int offset=0;
		        HttpServletRequest request = ServletActionContext.getRequest();
		        try {   
		            offset = Integer.parseInt(request.getParameter("pager.offset"));  
		         } catch (Exception e) {   
		         }   
		         if(offset<0){
		    		 offset=0;
		    	 }
		         PageModel pm=this.tuikuanService.findall(offset);
		         ActionContext.getContext().put("pm",pm);
		         return "show";
    	}else{
    		return "no";
    	}
	}
	/*
	 * 显示某条退款记录的详细信息
	 */
	public String showone() throws Exception{
		tuikuan=this.tuikuanService.findById(tuikuan.getId());
		ActionContext.getContext().put("tuikuan",tuikuan);
		return "showone";
	}
	/*
	 * 删除某条退款记录
	 */
     public String delete() throws Exception{
    	 tuikuan=this.tuikuanService.findById(tuikuan.getId());
    	 this.tuikuanService.delete(tuikuan);
    	 return "sud";
     }	
     /*
      * 扏行一次空跳转，跳转到查询页
      */
     public String zhuan() throws Exception{
    	 return "zhuan";
     }
     /*
      * 查询退款信息
      */
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
          PageModel pm=this.tuikuanService.findstr(tuikuan, offset);
          ActionContext.getContext().put("pm",pm);
          return "find";
     }
	
	public String getXiaoid() {
		return xiaoid;
	}
	public void setXiaoid(String xiaoid) {
		this.xiaoid = xiaoid;
	}
	public TuikuanService getTuikuanService() {
		return tuikuanService;
	}
	public void setTuikuanService(TuikuanService tuikuanService) {
		this.tuikuanService = tuikuanService;
	}
	public Tuikuan getTuikuan() {
		return tuikuan;
	}
	public void setTuikuan(Tuikuan tuikuan) {
		this.tuikuan = tuikuan;
	}

}
