package com.todayhouse.project.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class Member {
	// infrmember
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmName;   			//private를 사용하는 이유는, 기능의 제한을 주기위해서이다.
	private String ifmmNameEng;
	private Integer ifmmDelNy;
	private String ifmmPassword;
	private String ifmmPassword2;
	private Integer totalMember;
	/* @DateTimeFormat(pattern = "yyyy-MM-dd") */ // Date 타입이 스트링으로 바뀌어들어감
	private String ifmmDob;
	private String ifmmGenderCd;
	private String ifcdName;
	private String ifmmEmailConsentNy;
	private String ifmmSmsConsentNy ;
	private String ifmmPushConsentNy;
	private String ifmmMarketing;
	private Double ifmaLat;
	private Double ifmaLng;
	private String ifmmPwdValidFeedBack;
	private String ifmmPwdInvalidFeedBack;
	private String ifmmPwdConfirmValidFeedBack;
	private String ifmmPwdConfirmInvalidFeedBack;
	
	
	private Date regDateTime;
	private Date modDateTime;
//	infrmemberphone
	private String ifmpNumber;
	private String ifmpSeq;
	private String ifmpTelecomCd;
	private String ifmpTelecompany;
//	infrmemberEmail
	private String ifmeEmailFull;
// infrNationality
	private String ifnSeq;
	private String ifnName;
	private String ifnNation;
// infrmemberAddress
	private String ifmaAddress1;
	private String ifmaAddress2;
	private String ifmaZipcode;
// codeGroup 	
	private String originalFileName;
	private String uuidFileName;
	public MultipartFile file0;
	public MultipartFile file1;
	
	
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
	
	
	public String getIfmmNameEng() {
		return ifmmNameEng;
	}
	public void setIfmmNameEng(String ifmmNameEng) {
		this.ifmmNameEng = ifmmNameEng;
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
	
	public String getIfmpTelecomCd() {
		return ifmpTelecomCd;
	}
	public void setIfmpTelecomCd(String ifmpTelecomCd) {
		this.ifmpTelecomCd = ifmpTelecomCd;
	}
	
	public String getIfmpTelecompany() {
		return ifmpTelecompany;
	}
	public void setIfmpTelecompany(String ifmpTelecompany) {
		this.ifmpTelecompany = ifmpTelecompany;
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
	
	public Integer getTotalMember() {
		return totalMember;
	}
	public void setTotalMember(Integer totalMember) {
		this.totalMember = totalMember;
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
	
	public String getIfnNation() {
		return ifnNation;
	}
	public void setIfnNation(String ifnNation) {
		this.ifnNation = ifnNation;
	}
	public String getIfmmGenderCd() {
		return ifmmGenderCd;
	}
	public void setIfmmGenderCd(String ifmmGenderCd) {
		this.ifmmGenderCd = ifmmGenderCd;
	}
	
	public Double getIfmaLat() {
		return ifmaLat;
	}
	public void setIfmaLat(Double ifmaLat) {
		this.ifmaLat = ifmaLat;
	}
	public Double getIfmaLng() {
		return ifmaLng;
	}
	public void setIfmaLng(Double ifmaLng) {
		this.ifmaLng = ifmaLng;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	
	public String getIfmmEmailConsentNy() {
		return ifmmEmailConsentNy;
	}
	public void setIfmmEmailConsentNy(String ifmmEmailConsentNy) {
		this.ifmmEmailConsentNy = ifmmEmailConsentNy;
	}
	public String getIfmmSmsConsentNy() {
		return ifmmSmsConsentNy;
	}
	public void setIfmmSmsConsentNy(String ifmmSmsConsentNy) {
		this.ifmmSmsConsentNy = ifmmSmsConsentNy;
	}
	public String getIfmmPushConsentNy() {
		return ifmmPushConsentNy;
	}
	public void setIfmmPushConsentNy(String ifmmPushConsentNy) {
		this.ifmmPushConsentNy = ifmmPushConsentNy;
	}
	
	public String getIfmmMarketing() {
		return ifmmMarketing;
	}
	public void setIfmmMarketing(String ifmmMarketing) {
		this.ifmmMarketing = ifmmMarketing;
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
	public String getIfmmPwdValidFeedBack() {
		return ifmmPwdValidFeedBack;
	}
	public void setIfmmPwdValidFeedBack(String ifmmPwdValidFeedBack) {
		this.ifmmPwdValidFeedBack = ifmmPwdValidFeedBack;
	}
	public String getIfmmPwdInvalidFeedBack() {
		return ifmmPwdInvalidFeedBack;
	}
	public void setIfmmPwdInvalidFeedBack(String ifmmPwdInvalidFeedBack) {
		this.ifmmPwdInvalidFeedBack = ifmmPwdInvalidFeedBack;
	}
	public String getIfmmPwdConfirmValidFeedBack() {
		return ifmmPwdConfirmValidFeedBack;
	}
	public void setIfmmPwdConfirmValidFeedBack(String ifmmPwdConfirmValidFeedBack) {
		this.ifmmPwdConfirmValidFeedBack = ifmmPwdConfirmValidFeedBack;
	}
	public String getIfmmPwdConfirmInvalidFeedBack() {
		return ifmmPwdConfirmInvalidFeedBack;
	}
	public void setIfmmPwdConfirmInvalidFeedBack(String ifmmPwdConfirmInvalidFeedBack) {
		this.ifmmPwdConfirmInvalidFeedBack = ifmmPwdConfirmInvalidFeedBack;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getUuidFileName() {
		return uuidFileName;
	}
	public void setUuidFileName(String uuidFileName) {
		this.uuidFileName = uuidFileName;
	}

	public MultipartFile getFile0() {
		return file0;
	}
	public void setFile0(MultipartFile file0) {
		this.file0 = file0;
	}
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
	}
	
}