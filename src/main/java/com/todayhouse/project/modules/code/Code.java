package com.todayhouse.project.modules.code;

public class Code {  // 쿼리는 부르는 함수들임
	

//------------ dto 영역
	private String ifcgSeq;
	private String ifcgName;
	private Integer ifcgDelNy;    // Integer은 Null 가능한데 int 는 불가함
	
// infrCode
	private String ifcdSeq;
	private String ifcdName;
	private String ifcdDelNy;
//	private String ifcgSeq; // 외래키랑 주키가 충돌이생김, 이럴경우 주석달아서 보기편하게 사용.
//------------
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public String getIfcdSeq() {
		return ifcdSeq;
	}
	public void setIfcdSeq(String ifcdSeq) {
		this.ifcdSeq = ifcdSeq;
	}
	public String getIfcdName() {
		return ifcdName;
	}
	public void setIfcdName(String ifcdName) {
		this.ifcdName = ifcdName;
	}
	public String getIfcdDelNy() {
		return ifcdDelNy;
	}
	public void setIfcdDelNy(String ifcdDelNy) {
		this.ifcdDelNy = ifcdDelNy;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getIfcgName() {
		return ifcgName;
	}
	public void setIfcgName(String ifcgName) {
		this.ifcgName = ifcgName;
	}
	public Integer getIfcgDelNy() {
		return ifcgDelNy;
	}
	public void setIfcgDelNy(Integer ifcgDelNy) {
		this.ifcgDelNy = ifcgDelNy;
	}
	
	
}