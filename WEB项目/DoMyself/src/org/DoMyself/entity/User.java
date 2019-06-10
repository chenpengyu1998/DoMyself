package org.DoMyself.entity;

import java.util.Date;

public class User {
	private int userid;
	private String username;
	private String password;
	private String email;
	private String phonenum;
	private int friendid;
	private String usertag1;
	private String usertag2;
	private String usertag3;
	private Date registeredtimedate = new Date();

	
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

	public int getFriendid() {
		return friendid;
	}

	public void setFriendid(int friendid) {
		this.friendid = friendid;
	}

	public String getUsertag1() {
		return usertag1;
	}

	public void setUsertag1(String usertag1) {
		this.usertag1 = usertag1;
	}

	public String getUsertag2() {
		return usertag2;
	}

	public void setUsertag2(String usertag2) {
		this.usertag2 = usertag2;
	}

	public String getUsertag3() {
		return usertag3;
	}

	public void setUsertag3(String usertag3) {
		this.usertag3 = usertag3;
	}

	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username + ", password=" + password + ", email=" + email
				+ ", phonenum=" + phonenum + ", friendid=" + friendid + ", usertag1=" + usertag1 + ", usertag2="
				+ usertag2 + ", usertag3=" + usertag3 + ", registeredtimedate=" + registeredtimedate
				+ ", registeredtime=" + registeredtime + "]";
	}

	
	
	
	
}
