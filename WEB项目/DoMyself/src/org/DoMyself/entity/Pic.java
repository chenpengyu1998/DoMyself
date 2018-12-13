package org.DoMyself.entity;

public class Pic {
	private String pictureurl;
	private String messageid;
	private String picturename;
	private String picturemessage;
	private String username;
	public String getPictureurl() {
		return pictureurl;
	}
	public void setPictureurl(String pictureurl) {
		this.pictureurl = pictureurl;
	}
	public String getPicturename() {
		return picturename;
	}
	public void setPicturename(String picturename) {
		this.picturename = picturename;
	}
	public String getPicturemessage() {
		return picturemessage;
	}
	public void setPicturemessage(String picturemessage) {
		this.picturemessage = picturemessage;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMessageid() {
		return messageid;
	}
	public void setMessageid(String messageid) {
		this.messageid = messageid;
	}
	@Override
	public String toString() {
		return "Pic [pictureurl=" + pictureurl + ", messageid=" + messageid + ", picturename=" + picturename
				+ ", picturemessage=" + picturemessage + ", username=" + username + "]";
	}
	
	
}
