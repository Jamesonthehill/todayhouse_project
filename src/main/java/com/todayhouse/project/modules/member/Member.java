package com.todayhouse.project.modules.member;

public class Member {
	// infrmember
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmName;   			//private를 사용하는 이유는, 기능의 제한을 주기위해서이다.
	private Integer ifmmDelNy;
	private String regDateTime;
//	infrmemberphone
	private String ifmpNumber;
	private String ifmpSeq;
//	infrmemberEmail
	private String ifmeEmailFull;
	

	
//------------
	public String getIfmmSeq() { 		// getifmmSeq()를 실행
		return ifmmSeq;  			 // getter는 return 값 으로 받아야되나봄.
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;			// setter는 this.ifmmSeq = ifmmSeq; 이런식으로 받나봄.
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(String regDateTime) {
		this.regDateTime = regDateTime;
	}
	public String getIfmpNumber() {
		return ifmpNumber;
	}
	public void setIfmpNumber(String ifmpNumber) {
		this.ifmpNumber = ifmpNumber;
	}
	public String getIfmpSeq() {
		return ifmpSeq;
	}
	public void setIfmpSeq(String ifmpSeq) {
		this.ifmpSeq = ifmpSeq;
	}
	public String getIfmeEmailFull() {
		return ifmeEmailFull;
	}
	public void setIfmeEmailFull(String ifmeEmailFull) {
		this.ifmeEmailFull = ifmeEmailFull;
	}

	
}