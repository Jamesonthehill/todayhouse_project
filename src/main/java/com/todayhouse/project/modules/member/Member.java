package com.todayhouse.project.modules.member;

public class Member {
	
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmName;   			//private를 사용하는 이유는, 기능의 제한을 주기위해서이다.
	private Integer ifmmDelNy;
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
}