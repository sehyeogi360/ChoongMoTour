package com.marondal.choongmotour.lodging.model;

import java.util.Date;

public class CommentDetail {

	private int id;
	private int userId;
	private int lodgingId;		
	private String size;
	private String content;
	private String nickname;
	private String imagePath;
	private Integer commentCount;
	private double starpoint;

	private double avgStarPoint;
	private Date createdAt;

	//2024-04-10 페이지네이션 관련 변수들 추가

	private Integer SIZE;
	private Integer PAGE;				//현재페이지번호
	private Integer COUNTLIST;			//한 페이지에 출력될 게시물 수 (
	private Integer BEGIN;
	private Integer TOTALDATA;


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getLodgingId() {
		return lodgingId;
	}
	public void setLodgingId(int lodgingId) {
		this.lodgingId = lodgingId;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public Integer getCommentCount() { return commentCount; }

	public void setCommentCount(Integer commentCount) { this.commentCount = commentCount; }

	public double getStarpoint() {
		return starpoint;
	}
	public void setStarpoint(double starpoint) {
		this.starpoint = starpoint;
	}

	public double getAvgStarPoint() { return avgStarPoint; }

	public void setAvgStarPoint(double avgStarPoint) { this.avgStarPoint = avgStarPoint; }

	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Integer getSIZE() {
		return SIZE;
	}

	public void setSIZE(Integer SIZE) {
		this.SIZE = SIZE;
	}

	public Integer getPAGE() {
		return PAGE;
	}

	public void setPAGE(Integer PAGE) {
		this.PAGE = PAGE;
	}

	public Integer getCOUNTLIST() {
		return COUNTLIST;
	}

	public void setCOUNTLIST(Integer COUNTLIST) {
		this.COUNTLIST = COUNTLIST;
	}

	public Integer getBEGIN() {
		return BEGIN;
	}

	public void setBEGIN(Integer BEGIN) {
		this.BEGIN = BEGIN;
	}

	public Integer getTOTALDATA() {
		return TOTALDATA;
	}

	public void setTOTALDATA(Integer TOTALDATA) {
		this.TOTALDATA = TOTALDATA;
	}
}
