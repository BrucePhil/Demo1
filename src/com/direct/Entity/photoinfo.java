package com.direct.Entity;

public class photoinfo {
	private int photoid;
	private String photoname;
	private String phototime;
	private int user_id;
	private String beizhu;

	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getPhototime() {
		return phototime;
	}
	public void setPhototime(String phototime) {
		this.phototime = phototime;
	}
	public int getPhotoid() {
		return photoid;
	}
	public void setPhotoid(int photoid) {
		this.photoid = photoid;
	}
	public String getPhotoname() {
		return photoname;
	}
	public void setPhotoname(String photoname) {
		this.photoname = photoname;
	}

}
