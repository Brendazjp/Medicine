package com.bean;

public class Tuikuan {
	private int id;
	private String tkuanid;      //退款编号
	private String tkuantime;    //退款时间
	private float  tkuanjine;    //退款金额
	private String tkuanren;     //办理人
	private Shoukuan shoukuan;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTkuanid() {
		return tkuanid;
	}
	public void setTkuanid(String tkuanid) {
		this.tkuanid = tkuanid;
	}
	public String getTkuantime() {
		return tkuantime;
	}
	public void setTkuantime(String tkuantime) {
		this.tkuantime = tkuantime;
	}
	public float getTkuanjine() {
		return tkuanjine;
	}
	public void setTkuanjine(float tkuanjine) {
		this.tkuanjine = tkuanjine;
	}
	public String getTkuanren() {
		return tkuanren;
	}
	public void setTkuanren(String tkuanren) {
		this.tkuanren = tkuanren;
	}
	public Shoukuan getShoukuan() {
		return shoukuan;
	}
	public void setShoukuan(Shoukuan shoukuan) {
		this.shoukuan = shoukuan;
	}   

}
