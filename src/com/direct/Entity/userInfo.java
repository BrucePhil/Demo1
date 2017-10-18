package com.direct.Entity;

public class userInfo {
	private int user_id;
	private String user_name;
	private String userpwd;
	private String once_again_userpwd;
	private String sex;
	private String birthday;
	private String e_mail;
	private String phone;
	private String login_user_name;
	private String login_password;
	private String photo;
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getLogin_user_name() {
		return login_user_name;
	}
	public void setLogin_user_name(String loginUserName) {
		login_user_name = loginUserName;
	}
	public String getLogin_password() {
		return login_password;
	}
	public void setLogin_password(String loginPassword) {
		login_password = loginPassword;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int userId) {
		user_id = userId;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getOnce_again_userpwd() {
		return once_again_userpwd;
	}
	public void setOnce_again_userpwd(String onceAgainUserpwd) {
		once_again_userpwd = onceAgainUserpwd;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getE_mail() {
		return e_mail;
	}
	public void setE_mail(String eMail) {
		e_mail = eMail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
}
