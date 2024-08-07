package com.marondal.choongmotour.lodging.model;

public class LodgingDetail {//숙소카드 하나에 필요한 데이터들
	private int id;
	private String roomName;
	private boolean isDibs;//찜했는지 안했는지 여부	
	private String level;
	private String areaName;
	private String imagePath;//여기에 댓글개수, 평균평점도 추가

	private Integer singleRoomPrice;
	private Integer commentCount;
	private double avgStarPoint;
	private String sortType;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public boolean isDibs() {
		return isDibs;
	}
	public void setDibs(boolean isDibs) {
		this.isDibs = isDibs;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public Integer getSingleRoomPrice() { return singleRoomPrice; }

	public void setSingleRoomPrice(Integer singleRoomPrice) { this.singleRoomPrice = singleRoomPrice; }

	public Integer getCommentCount() { return commentCount; }

	public void setCommentCount(Integer commentCount) { this.commentCount = commentCount; }

	public double getAvgStarPoint() { return avgStarPoint; }
	public void setAvgStarPoint(double avgStarPoint) { this.avgStarPoint = avgStarPoint; }
	public String getSortType() { return sortType; }
	public void setSortType(String sortType) { this.sortType = sortType; }
}
