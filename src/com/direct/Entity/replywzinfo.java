package com.direct.Entity;

public class replywzinfo {
	private int replywzid;
	private int replywzuserid;//说说评论人id
	private String replywzcont;//
	private String replywztime;//
	private String replymywzname;//回复人的id
	public int getReplywzid() {
		return replywzid;
	}
	public void setReplywzid(int replywzid) {
		this.replywzid = replywzid;
	}
	public int getReplywzuserid() {
		return replywzuserid;
	}
	public void setReplywzuserid(int replywzuserid) {
		this.replywzuserid = replywzuserid;
	}
	public String getReplywzcont() {
		return replywzcont;
	}
	public void setReplywzcont(String replywzcont) {
		this.replywzcont = replywzcont;
	}
	public String getReplywztime() {
		return replywztime;
	}
	public void setReplywztime(String replywztime) {
		this.replywztime = replywztime;
	}
	public String getReplymywzname() {
		return replymywzname;
	}
	public void setReplymywzname(String replymywzname) {
		this.replymywzname = replymywzname;
	}
}
