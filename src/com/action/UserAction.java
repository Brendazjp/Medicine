package com.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.UserService;

public class UserAction extends ActionSupport {
	private UserService userService;
	private User user;
	private String newpassword;
	private int id;
	private int yema;
	static int ye=0;
	
	public int getYema() {
		return yema;
	}
	public void setYema(int yema) {
		this.yema = yema;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	/**
	 * 添加用户的基本信息
	 * @return
	 * @throws Exception
	 */
	public String save() throws Exception {
		this.userService.saveUser(user);
		List list=this.userService.findAllUsers(0);
		ActionContext.getContext().put("list",list);
		this.userService.findZongye();             //计算总页数和总条数（信息）
		ActionContext.getContext().put("ye",1);    //当前页为第1页（信息）
		return  "show";
		 }
	/**
	 * 显示所有用户的基本信息
	 * @return
	 * @throws Exception
	 */
	public String show() throws Exception{
		User user=(User)ServletActionContext.getRequest().getSession().getAttribute("user");
    	int b=user.getQuanxian();
    	if((b==6)||(b==0)){
				this.userService.findZongye();            //计算总页数和总条数（信息）
				long a=(Long)ActionContext.getContext().get("zongye");//取总页数
				if(yema==0)
				{
					ye=0;
				}
				if(yema==1)
				{ 
					if(ye!=0)
					{
					    ye=ye-1;
					}   
				}
				if(yema==2)
				{
					if(ye!=a-1)
					{
					  ye=ye+1;
					}
				}
				if(yema==3)
				{
					ye=(int)a-1;
				}
				List list=this.userService.findAllUsers(ye*15);
				ActionContext.getContext().put("ye", ye+1);     //当前页为ye+1页
				ActionContext.getContext().put("list", list);
				return "show";
    	}else{
    		return "no";
    	}
	}
	/**
	 * 删除某条用户的记录信息
	 * @return
	 * @throws Exception
	 */
	public String delete() throws Exception{
		user=this.userService.findUserById(id);
		this.userService.deleteUser(user);
		List list=this.userService.findAllUsers(0);
		ActionContext.getContext().put("list",list);
		this.userService.findZongye();                  //计算总页数和总条数（信息）
		ActionContext.getContext().put("ye",1);          //当前页为第1页（信息）
		return "show";
	}
	/**
	 * 显示某条用户的详细信息
	 * @return
	 * @throws Exception
	 */
	public String showone() throws Exception{
		user=this.userService.findUserById(id);
		ActionContext.getContext().put("user",user);
		return "showone";
	}
	/**
	 * 在修改页内，显示某条用户的详细信息，为下面的update方法做铺垫
	 * @return
	 * @throws Exception
	 */
	public String showone1() throws Exception{
		user=this.userService.findUserById(id);
		ActionContext.getContext().put("user",user);
		return "showone1";
	}
	/**
	 * 修改用户信息
	 * @return
	 * @throws Exception
	 */
	public String update() throws Exception{
		this.userService.updateUser(user);
		List list=this.userService.findAllUsers(0);
		ActionContext.getContext().put("list", list);
		return "show";
	}
	/**
	 * 对用户信息进行高级查询（可以以提供的任意一个或几个或所有字段进行模糊查询）
	 * @return
	 * @throws Exception
	 */
	public String findstr() throws Exception{
		List list=this.userService.findStr(user,0);
		ActionContext.getContext().put("ye",1);
		ActionContext.getContext().put("list", list);
		return "findstr";
	}
	/**
	 * 用户登录
	 * @return
	 * @throws Exception
	 */
	public String login() throws Exception{
		 user=this.userService.login(user.getUsername(), user.getPassword());
		 ActionContext.getContext().getSession().put("user", user);
		 return "login";
		 
	}
	/**
	 * 某个用户登录后，可以更改自己的密码
	 * @return
	 * @throws Exception
	 */
	public String updatepass() throws Exception{
        User uu=this.userService.findUserById(user.getId());		
		this.userService.login(uu.getUsername(),user.getPassword());
		uu.setPassword(newpassword);
		this.userService.updateUser(uu);
		return "updatepass";
		
	}
	public String getNewpassword() {
		return newpassword;
	}
	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	
		
	    
	   
	
	

}
