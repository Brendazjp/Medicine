package com.bean;

public class Kucun {
	private int id;
	private String kcid;       //库存编号
	private String channame;   //产品名称
	private String ckname;     //仓库名称
	private int shuliang;      //库存数量
	private int yujingzhi;     //预警值
	private String jztime;     //进住时间
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getKcid() {
		return kcid;
	}
	public void setKcid(String kcid) {
		this.kcid = kcid;
	}
	public String getChanname() {
		return channame;
	}
	public void setChanname(String channame) {
		this.channame = channame;
	}
	public String getCkname() {
		return ckname;
	}
	public void setCkname(String ckname) {
		this.ckname = ckname;
	}
	public int getShuliang() {
		return shuliang;
	}
	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	public String getJztime() {
		return jztime;
	}
	public void setJztime(String jztime) {
		this.jztime = jztime;
	}
	public int getYujingzhi() {
		return yujingzhi;
	}
	public void setYujingzhi(int yujingzhi) {
		this.yujingzhi = yujingzhi;
	}

}
