package com.direct.Entity;

import java.util.ArrayList;

public class saidinfo {
	private int said;//说说id
	private String saname;//发布说说的人
	private String satime;//说说时间
	private String sacont;//说说内容
	private String image;
	private ArrayList<saidreviewinfo> arr;
	
	public ArrayList<saidreviewinfo> getArr() {
		return arr;
	}
	public void setArr(ArrayList<saidreviewinfo> arr) {
		this.arr = arr;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getSaid() {
		return said;
	}
	public void setSaid(int said) {
		this.said = said;
	}
	public String getSaname() {
		return saname;
	}
	public void setSaname(String saname) {
		this.saname = saname;
	}
	public String getSatime() {
		return satime;
	}
	public void setSatime(String satime) {
		this.satime = satime;
	}
	public String getSacont() {
		return sacont;
	}
	public void setSacont(String sacont) {
		this.sacont = sacont;
	}
}
