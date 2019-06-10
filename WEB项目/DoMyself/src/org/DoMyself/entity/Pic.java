package org.DoMyself.entity;

public class Pic {
	private String pictureurl;
	private String messageid;
	private String picturename;
	private String picturemessage;
	private String username;
	private String tag1;
	private String tag2;
	private String tag3;
	private int tag1heat;
	private int tag2heat;
	private int tag3heat;
	private int picheat;
	
	
	
	
	
	
	
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
	public String getTag1() {
		return tag1;
	}
	public void setTag1(String tag1) {
		this.tag1 = tag1;
	}
	public String getTag2() {
		return tag2;
	}
	public void setTag2(String tag2) {
		this.tag2 = tag2;
	}
	public String getTag3() {
		return tag3;
	}
	public void setTag3(String tag3) {
		this.tag3 = tag3;
	}
	public int getTag1heat() {
		return tag1heat;
	}
	public void setTag1heat(int tag1heat) {
		this.tag1heat = tag1heat;
	}
	public int getTag2heat() {
		return tag2heat;
	}
	public void setTag2heat(int tag2heat) {
		this.tag2heat = tag2heat;
	}
	public int getTag3heat() {
		return tag3heat;
	}
	public void setTag3heat(int tag3heat) {
		this.tag3heat = tag3heat;
	}
	public int getPicheat() {
		return picheat;
	}
	public void setPicheat(int picheat) {
		this.picheat = picheat;
	}
	@Override
	public String toString() {
		return "Pic [pictureurl=" + pictureurl + ", messageid=" + messageid + ", picturename=" + picturename
				+ ", picturemessage=" + picturemessage + ", username=" + username + ", tag1=" + tag1 + ", tag2=" + tag2
				+ ", tag3=" + tag3 + ", tag1heat=" + tag1heat + ", tag2heat=" + tag2heat + ", tag3heat=" + tag3heat
				+ ", picheat=" + picheat + "]";
	}

	
	
}
