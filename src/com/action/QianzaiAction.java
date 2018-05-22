package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.bean.Qianzai;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.QianzaiService;
import com.util.PageModel;

public class QianzaiAction extends ActionSupport {
	private QianzaiService qianzaiService;
	private Qianzai qianzai;

	public Qianzai getQianzai() {
		return qianzai;
	}

	public void setQianzai(Qianzai qianzai) {
		this.qianzai = qianzai;
	}

	public QianzaiService getQianzaiService() {
		return qianzaiService;
	}

	public void setQianzaiService(QianzaiService qianzaiService) {
		this.qianzaiService = qianzaiService;
	}
    /**
     * 保存潜地在客户的信息
     * @return
     * @throws Exception
     */
	public String save() throws Exception {
		this.qianzaiService.save(qianzai);
		return "sud";
	}
	/**
	 * 显示所有潜在客户的信息
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
		         if(offset<0){
		    		 offset=0;
		    	 }
		         PageModel pm=this.qianzaiService.findall(offset);
		         ActionContext.getContext().put("pm", pm);
				return "show";
    	}
    	else{
    		return "no";
    	}
	}
	/**
	 * 显示某条潜在客户记录的详细信息
	 * @return
	 * @throws Exception
	 */
	public String showone() throws Exception {
		qianzai=this.qianzaiService.findById(qianzai.getId());
		ActionContext.getContext().put("qianzai",qianzai);
		return "showone";
	}
	/**
	 * 显示某条潜在客户记录的详细信息，为下面的修改做铺垫
	 * @return
	 * @throws Exception
	 */
	public String showone1() throws Exception {
		qianzai=this.qianzaiService.findById(qianzai.getId());
		ActionContext.getContext().put("qianzai",qianzai);
		return "showone1";
	}
	/**
	 * 修改某条潜在客户的信息
	 * @return
	 * @throws Exception
	 */
	public String update() throws Exception{
		this.qianzaiService.update(qianzai);
		return "sud";
	}
	/**
	 * 删除某条潜在客户信息
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		qianzai=this.qianzaiService.findById(qianzai.getId());
		this.qianzaiService.delete(qianzai);
		return "sud";
	}
	/**
	 * 一次action空跳转，解决路径查询问题
	 * @return
	 * @throws Exception
	 */
	public String zhuan() throws Exception{
		return "zhuan";
	}
	/**
	 * 查询潜在客户信息
	 * @return
	 * @throws Exception
	 */
	public String find() throws Exception{
		int offset=0;
        HttpServletRequest request = ServletActionContext.getRequest();
        try {   
            offset = Integer.parseInt(request.getParameter("pager.offset"));  
         } catch (Exception e) {   
         }  
         if(offset<0) {
        	 offset = 0;
         }
         PageModel pm=this.qianzaiService.findStr(qianzai, offset);
         ActionContext.getContext().put("pm", pm);
		return "find";
	}
	
	
	
}
