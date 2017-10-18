package com.direct.Entity;

public class titleinfo {
	private int titleid;//文章id
	private int user_id;//外键引用user表
	private String user_name;
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	private String title;//文章标题
	private String author;//文章作者
	private int typeid;//外键引用类型表
	private String loadurl;//原创作者信息
	private String lable;//文章标签
	private String create_time;//发表时间
	private String titlecontent;//文章内容
	private String typename;//文章类型
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public int getTitleid() {
		return titleid;
	}
	public void setTitleid(int titleid) {
		this.titleid = titleid;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getLoadurl() {
		return loadurl;
	}
	public void setLoadurl(String loadurl) {
		this.loadurl = loadurl;
	}
	public String getLable() {
		return lable;
	}
	public void setLable(String lable) {
		this.lable = lable;
	}
	public String getCreate_time() {
		return create_time;
	}
	public void setCreate_time(String createTime) {
		create_time = createTime;
	}
	public String getTitlecontent() {
		return titlecontent;
	}
	public void setTitlecontent(String titlecontent) {
		this.titlecontent = titlecontent;
	}

}
