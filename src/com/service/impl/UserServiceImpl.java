package com.service.impl;

import java.util.List;

import com.bean.Chanpin;
import com.bean.User;
import com.dao.UserDAO;
import com.opensymphony.xwork2.ActionContext;
import com.service.UserService;

public class UserServiceImpl implements UserService {

	private UserDAO userDAO;

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public void deleteUser(User user) {
		this.userDAO.deleteUser(user);

	}

	public List<User> findAllUsers(int yema) {
		return this.userDAO.findAllUser(yema);
	}

	public User findUserById(int id) {
		return this.userDAO.findUserById(id);
	}

	public User login(String username, String password) {
		User user=(User)this.userDAO.findUserByUsername(username);
		if(user==null)
		{
			throw new RuntimeException("登录名不存在");
		}
		if(!user.getPassword().equals(password))
		{
			throw new RuntimeException("密码不正确");
		}
		return user;
	}

	public void saveUser(User user) {
		this.userDAO.saveUser(user);
	}

	public void updateUser(User user) {

		this.userDAO.updateUser(user);
	}
	   public void findZongye()
	{
		long count=(long)this.userDAO.findCount();
		long zongye=0;
		if(count%15==0)
		{zongye=count/15;}
		else
		{zongye=count/15+1;}
		ActionContext.getContext().put("zongye",zongye);
		ActionContext.getContext().put("count",count);
	}
	   public List<User> findStr(User u,int yema)
	   {
		 StringBuffer sb= new StringBuffer();
		 sb.append("from User where 1=1 ");
		 if((null!=u.getUserid())&&(!"".equals(u.getUserid()))){
			 sb.append(" and userid like '%").append(u.getUserid()).append("%'");
		 }
		 if((null!=u.getUsername())&&(!"".equals(u.getUsername()))){
			 sb.append(" and username like '%").append(u.getUsername()).append("%'");
		 }
		 if((null!=u.getName())&&(!"".equals(u.getName()))){
			 sb.append(" and name like '%").append(u.getName()).append("%'");
		 }
		 if((null!=u.getSex())&&(!"".equals(u.getSex()))){
			 sb.append(" and sex like '%").append(u.getSex()).append("%'");
		 }
		 if((null!=u.getZhiwu())&&(!"".equals(u.getZhiwu()))){
			 sb.append(" and zhiwu like '%").append(u.getZhiwu()).append("%'");
		 }
		 List list=this.userDAO.findStr(sb.toString(), yema);
			 long count=(long)list.size();
			 long zongye=0;
				if(count%15==0)
				{zongye=count/15;}
				else
				{zongye=count/15+1;}
				ActionContext.getContext().put("zongye",zongye);
				ActionContext.getContext().put("count",count);									 
		   return list;
	   }
	   public String findByusername(String username)
	   {
		  User u=(User)this.userDAO.findUserByUsername(username);
		   if(u!=null)
		   {
			   return "登录名已存在";
		   }else
		   {
			   return "";
		   }
	   }

	public String finds(String userid) {
		String sql="from User where userid='"+userid+"'";
		User user=this.userDAO.find(sql);
		if(user==null){
			return "";
		}else{
			return "用户编号已存在";
		}
	}
	

}
