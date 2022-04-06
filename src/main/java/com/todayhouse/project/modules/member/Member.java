package com.todayhouse.project.modules.member;

import java.util.Date;


public class Member {
	// infrmember
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmName;   			//private를 사용하는 이유는, 기능의 제한을 주기위해서이다.
	private Integer ifmmDelNy;
	private String ifmmPassword;
	private String ifmmPassword2;
	/* @DateTimeFormat(pattern = "yyyy-MM-dd") */ // Date 타입이 스트링으로 바뀌어들어감
	private String ifmmDob;
	private String ifmmGenderCd;
	private String ifcdName;
	
	
	private Date regDateTime;
	private Date modDateTime;
//	infrmemberphone
	private String ifmpNumber;
	private String ifmpSeq;
//	infrmemberEmail
	private String ifmeEmailFull;
// infrNationality
	private String ifnSeq;
	private String ifnName;
// infrmemberAddress
	private String ifmaAddress1;
	private String ifmaAddress2;
	private String ifmaZipcode;
	
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
	
	
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	
	
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
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
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}
	
	public String getIfmmPassword2() {
		return ifmmPassword2;
	}
	public void setIfmmPassword2(String ifmmPassword2) {
		this.ifmmPassword2 = ifmmPassword2;
	}
	public String getIfnSeq() {
		return ifnSeq;
	}
	public void setIfnSeq(String ifnSeq) {
		this.ifnSeq = ifnSeq;
	}
	public String getIfnName() {
		return ifnName;
	}
	public void setIfnName(String ifnName) {
		this.ifnName = ifnName;
	}
	public String getIfmmGenderCd() {
		return ifmmGenderCd;
	}
	public void setIfmmGenderCd(String ifmmGenderCd) {
		this.ifmmGenderCd = ifmmGenderCd;
	}
	
	
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getIfmaAddress1() {
		return ifmaAddress1;
	}
	public void setIfmaAddress1(String ifmaAddress1) {
		this.ifmaAddress1 = ifmaAddress1;
	}
	public String getIfmaAddress2() {
		return ifmaAddress2;
	}
	public void setIfmaAddress2(String ifmaAddress2) {
		this.ifmaAddress2 = ifmaAddress2;
	}
	public String getIfmaZipcode() {
		return ifmaZipcode;
	}
	public void setIfmaZipcode(String ifmaZipcode) {
		this.ifmaZipcode = ifmaZipcode;
	}

	
}