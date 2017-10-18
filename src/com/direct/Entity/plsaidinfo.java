package com.direct.Entity;

import java.util.ArrayList;

public class plsaidinfo {
	private int plsaidid;
	private String plcont;
	private String plname;
	private String pltime;
	private int saidren;
	public int getSaidren() {
		return saidren;
	}
	public void setSaidren(int saidren) {
		this.saidren = saidren;
	}
	private int plnum;
	
	private ArrayList<replyinfo> arr;
	public ArrayList<replyinfo> getArr() {
		return arr;
	}
	public void setArr(ArrayList<replyinfo> arr) {
		this.arr = arr;
	}
	private int plrenid;
	
	public int getPlrenid() {
		return plrenid;
	}
	public void setPlrenid(int plrenid) {
		this.plrenid = plrenid;
	}
	public int getPlsaidid() {
		return plsaidid;
	}
	public void setPlsaidid(int plsaidid) {
		this.plsaidid = plsaidid;
	}
	public String getPlcont() {
		return plcont;
	}
	public void setPlcont(String plcont) {
		this.plcont = plcont;
	}
	public String getPlname() {
		return plname;
	}
	public void setPlname(String plname) {
		this.plname = plname;
	}
	public String getPltime() {
		return pltime;
	}
	public void setPltime(String pltime) {
		this.pltime = pltime;
	}
	public int getPlnum() {
		return plnum;
	}
	public void setPlnum(int plnum) {
		this.plnum = plnum;
	}
	
}
