package com.model;

/**
 * Memberstyle entity. @author MyEclipse Persistence Tools
 */

public class Memberstyle implements java.io.Serializable {

	// Fields

	private Integer mid;
	private Partyadministrator partyadministrator;
	private String mname;
	private String photo;
	private String content;
	private String loadTime;

	// Constructors

	/** default constructor */
	public Memberstyle() {
	}

	/** minimal constructor */
	public Memberstyle(Partyadministrator partyadministrator, String mname) {
		this.partyadministrator = partyadministrator;
		this.mname = mname;
	}

	/** full constructor */
	public Memberstyle(Partyadministrator partyadministrator, String mname,
			String photo, String content, String loadTime) {
		this.partyadministrator = partyadministrator;
		this.mname = mname;
		this.photo = photo;
		this.content = content;
		this.loadTime = loadTime;
	}

	// Property accessors

	public Integer getMid() {
		return this.mid;
	}

	public void setMid(Integer mid) {
		this.mid = mid;
	}

	public Partyadministrator getPartyadministrator() {
		return this.partyadministrator;
	}

	public void setPartyadministrator(Partyadministrator partyadministrator) {
		this.partyadministrator = partyadministrator;
	}

	public String getMname() {
		return this.mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLoadTime() {
		return this.loadTime;
	}

	public void setLoadTime(String loadTime) {
		this.loadTime = loadTime;
	}

}