package com.direct.Entity;

public class reviewinfo {
	private int reviewid;//评论id
	private int user_id;//评论者引用user表
	private String reviewcontent;//评论内容
	private String reviewtime;//评论时间
	private String rename;//评论人
	private String titname;//评论文章名字
	private int rewnul;//文章编号
	public int getRewnul() {
		return rewnul;
	}
	public void setRewnul(int rewnul) {
		this.rewnul = rewnul;
	}
	public String getTitname() {
		return titname;
	}
	public void setTitname(String titname) {
		this.titname = titname;
	}
	public String getRename() {
		return rename;
	}
	public void setRename(String rename) {
		this.rename = rename;
	}
	public int getReviewid() {
		return reviewid;
	}
	public void setReviewid(int reviewid) {
		this.reviewid = reviewid;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public String getReviewcontent() {
		return reviewcontent;
	}
	public void setReviewcontent(String reviewcontent) {
		this.reviewcontent = reviewcontent;
	}
	public String getReviewtime() {
		return reviewtime;
	}
	public void setReviewtime(String reviewtime) {
		this.reviewtime = reviewtime;
	}

}
