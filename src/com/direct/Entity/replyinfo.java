package com.direct.Entity;

import java.util.ArrayList;

public class replyinfo {
	private int replyid;
	private int replyuserid;//说说评论人id
	private String replycont;//
	private String replytime;//
	private String replymyname;//回复人的id
	public int getReplyid() {
		return replyid;
	}
	public void setReplyid(int replyid) {
		this.replyid = replyid;
	}
	public int getReplyuserid() {
		return replyuserid;
	}
	public void setReplyuserid(int replyuserid) {
		this.replyuserid = replyuserid;
	}
	public String getReplycont() {
		return replycont;
	}
	public void setReplycont(String replycont) {
		this.replycont = replycont;
	}
	public String getReplytime() {
		return replytime;
	}
	public void setReplytime(String replytime) {
		this.replytime = replytime;
	}
	public String getReplymyname() {
		return replymyname;
	}
	public void setReplymyname(String replymyname) {
		this.replymyname = replymyname;
	}
	

}
