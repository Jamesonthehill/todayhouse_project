package com.todayhouse.project.modules.member;

public class MemberVo {

	// infrMember
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmName;
	private String ifmmDelNy;
	private String originalFileName;
	private String uuidFileName;
	/* private Integer regDateTime; */
	
	
	//  Search
	private String shIfmmName;
	private String shOption;
	private String shValue;
	private String ShDateStart;
	private String ShDateEnd;
	private Integer ShOptionDate;
	
	private String shDob;
	private String shifmmSeq;
	private String shJoinOption;
	private String shJoinValue;	
	//	infrmemberphone
	private String ifmpNumber;
	private String ifmpSeq;
	
	//	infrmemberEmail
	private String ifmeEmailFull;
	
	
	// uelete
	private String[] checkboxSeqArray;

//	paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 10;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 5;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 row
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	private int startRnumForMysql = 0;							// 쿼리 시작 row

	
	//----------------
	public String getIfmmSeq() {
		return ifmmSeq;
	}

	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
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
	


	/*
	 * public Integer getRegDateTime() { return regDateTime; }
	 * 
	 * public void setRegDateTime(Integer regDateTime) { this.regDateTime =
	 * regDateTime; }
	 */

	public String getIfmmDelNy() {
		return ifmmDelNy;
	}

	public void setIfmmDelNy(String ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
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

	public String getShIfmmName() {
		return shIfmmName;
	}

	public void setShIfmmName(String shIfmmName) {
		this.shIfmmName = shIfmmName;
	}

	public String getShOption() {
		return shOption;
	}

	public void setShOption(String shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	

	public String getShDateStart() {
		return ShDateStart;
	}

	public void setShDateStart(String shDateStart) {
		ShDateStart = shDateStart;
	}

	public String getShDateEnd() {
		return ShDateEnd;
	}

	public void setShDateEnd(String shDateEnd) {
		ShDateEnd = shDateEnd;
	}



	public Integer getShOptionDate() {
		return ShOptionDate;
	}

	public void setShOptionDate(Integer shOptionDate) {
		ShOptionDate = shOptionDate;
	}

	
	public String getShDob() {
		return shDob;
	}

	public void setShDob(String shDob) {
		this.shDob = shDob;
	}

	public String getShifmmSeq() {
		return shifmmSeq;
	}

	public void setShifmmSeq(String shifmmSeq) {
		this.shifmmSeq = shifmmSeq;
	}

	public String getShJoinOption() {
		return shJoinOption;
	}

	public void setShJoinOption(String shJoinOption) {
		this.shJoinOption = shJoinOption;
	}

	public String getShJoinValue() {
		return shJoinValue;
	}

	public void setShJoinValue(String shJoinValue) {
		this.shJoinValue = shJoinValue;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
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

	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	

	/*
	 * public int getStartRnumForOracle() { return startRnumForOracle; }
	 * 
	 * public void setStartRnumForOracle(int startRnumForOracle) {
	 * this.startRnumForOracle = startRnumForOracle; }
	 * 
	 * public int getEndRnumForOracle() { return endRnumForOracle; }
	 * 
	 * public void setEndRnumForOracle(int endRnumForOracle) { this.endRnumForOracle
	 * = endRnumForOracle; }
	 */
	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}
	
	
	public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages+ 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}
		
		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}
		
		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1) startRnumForOracle = 1;
		
		
		if (thisPage == 1) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
		
	
}

		

}
