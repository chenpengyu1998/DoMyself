package org.DoMyself.entity;

import java.util.Date;

public class User {
	private int userid;
	private String username;
	private String password;
	private String email;
	private String phonenum;
	private Date registeredtimedate = new Date();
	private String sex;
	private Date birthday;
	private String headshot;
	private String signature;
	
	private Date registeredtime;
	
	
	
	public Date getRegisteredtime() {
		return registeredtime;
	}

	public void setRegisteredtime(Date registeredtime) {
		this.registeredtime = registeredtime;
	}

	public int getUserid() {
		return userid;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public Date getRegisteredtimedate() {
		return registeredtimedate;
	}
	public void setRegisteredtimedate(Date registeredtimedate) {
		this.registeredtimedate = registeredtimedate;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getHeadshot() {
		return headshot;
	}
	public void setHeadshot(String headshot) {
		this.headshot = headshot;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", phonenum=" + phonenum + ", registeredtimedate=" + registeredtimedate + ", sex=" + sex
				+ ", birthday=" + birthday + ", headshot=" + headshot + ", signature=" + signature + ", registeredtime="
				+ registeredtime + "]";
	}
	
	
	
	
	
}
