package com.direct.Entity;

import java.util.ArrayList;

public class saidreviewinfo {
	private int saidreviewid;//评论id
	private String saidid;//说说的id
	private String srtime;//评论说说时间
	private String srcont;//评论说说内容
	private String srname;//评论人
	private int saidnum;//评论说说的id
	private int shuoid;//
	private String photo;
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	private ArrayList<plsaidinfo> arr;
	public ArrayList<plsaidinfo> getArr() {
		return arr;
	}
	public void setArr(ArrayList<plsaidinfo> arr) {
		this.arr = arr;
	}
	private String saidname;//发布说说的人
	
	public String getSaidname() {
		return saidname;
	}
	public void setSaidname(String saidname) {
		this.saidname = saidname;
	}
	public int getShuoid() {
		return shuoid;
	}
	public void setShuoid(int shuoid) {
		this.shuoid = shuoid;
	}
	public int getSaidnum() {
		return saidnum;
	}
	public void setSaidnum(int saidnum) {
		this.saidnum = saidnum;
	}
	private int userid;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getSaidreviewid() {
		return saidreviewid;
	}
	public void setSaidreviewid(int saidreviewid) {
		this.saidreviewid = saidreviewid;
	}
	public String getSaidid() {
		return saidid;
	}
	public void setSaidid(String saidid) {
		this.saidid = saidid;
	}
	public String getSrtime() {
		return srtime;
	}
	public void setSrtime(String srtime) {
		this.srtime = srtime;
	}
	public String getSrcont() {
		return srcont;
	}
	public void setSrcont(String srcont) {
		this.srcont = srcont;
	}
	public String getSrname() {
		return srname;
	}
	public void setSrname(String srname) {
		this.srname = srname;
	}
}
