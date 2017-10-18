package com.direct.Entity;

public class recommendinfo {
	private int recommendid;//推荐文章id；
	private int recommendnum;//外键引用titleid
	private String title;
	private String create_time;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String createTime) {
		create_time = createTime;
	}
	public int getRecommendid() {
		return recommendid;
	}
	public void setRecommendid(int recommendid) {
		this.recommendid = recommendid;
	}
	public int getRecommendnum() {
		return recommendnum;
	}
	public void setRecommendnum(int recommendnum) {
		this.recommendnum = recommendnum;
	}

}
