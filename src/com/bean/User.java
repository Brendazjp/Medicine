package com.bean;

public class User {
	private int id;
	private String userid;     //用户编号
	private String username;   //登录名
	private String password;   //密码
	private String name;       //用户姓名
	private String sex;        //用户性别
	private String zhiwu;      //用户职务
	private String lianxi;     //用户联系电话
	private int quanxian;      //用户权限
	private int yema;          //页码
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getZhiwu() {
		return zhiwu;
	}
	public void setZhiwu(String zhiwu) {
		this.zhiwu = zhiwu;
	}
	public String getLianxi() {
		return lianxi;
	}
	public void setLianxi(String lianxi) {
		this.lianxi = lianxi;
	}
	public int getQuanxian() {
		return quanxian;
	}
	public void setQuanxian(int quanxian) {
		this.quanxian = quanxian;
	}
	public int getYema() {
		return yema;
	}
	public void setYema(int yema) {
		this.yema = yema;
	}

}
