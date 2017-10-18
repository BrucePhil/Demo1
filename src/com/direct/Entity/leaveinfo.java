package com.direct.Entity;

public class leaveinfo {
	//留言实体类
	
	private int leaveid;//留言id
	private String name;//留人姓名
	private int leave_name;//留言人引用user表
	private String leavecontent;//留言内容
	private String leavetime;//留言时间
	private String user_name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public int getLeaveid() {
		return leaveid;
	}
	public void setLeaveid(int leaveid) {
		this.leaveid = leaveid;
	}

	public int getLeave_name() {
		return leave_name;
	}
	public void setLeave_name(int leaveName) {
		leave_name = leaveName;
	}
	public String getLeavecontent() {
		return leavecontent;
	}
	public void setLeavecontent(String leavecontent) {
		this.leavecontent = leavecontent;
	}
	public String getLeavetime() {
		return leavetime;
	}
	public void setLeavetime(String leavetime) {
		this.leavetime = leavetime;
	}

}
