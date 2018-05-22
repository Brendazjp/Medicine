package com.bean;

public class Shoukuan {
	private int id;
	private String shoukuanid;    //收款编号
	private String shitime;       //实收时间
	private float shijine;       //实收金额
	private int xinyupf;       //信誉评分
	private String shoukuanren;   //办理人
	private Xiaoshou xiaoshou;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getShoukuanid() {
		return shoukuanid;
	}
	public void setShoukuanid(String shoukuanid) {
		this.shoukuanid = shoukuanid;
	}
	public String getShitime() {
		return shitime;
	}
	public void setShitime(String shitime) {
		this.shitime = shitime;
	}
	public float getShijine() {
		return shijine;
	}
	public void setShijine(float shijine) {
		this.shijine = shijine;
	}
	public int getXinyupf() {
		return xinyupf;
	}
	public void setXinyupf(int xinyupf) {
		this.xinyupf = xinyupf;
	}
	public String getShoukuanren() {
		return shoukuanren;
	}
	public void setShoukuanren(String shoukuanren) {
		this.shoukuanren = shoukuanren;
	}
	public Xiaoshou getXiaoshou() {
		return xiaoshou;
	}
	public void setXiaoshou(Xiaoshou xiaoshou) {
		this.xiaoshou = xiaoshou;
	}
	

}
