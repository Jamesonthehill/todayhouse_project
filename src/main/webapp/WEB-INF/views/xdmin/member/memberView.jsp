<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<!-- 공동코드 선언  -->
<jsp:useBean id="CodeServiceImpl" class="com.todayhouse.project.modules.code.CodeServiceImpl"/>


<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../../../resources/xdmin/css/memberView.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/b322818db5.js" crossorigin="anonymous"></script>
   	<script src="../../../../resources/common/js/validation.js"></script>
   	
    <title>인테리어 플랫폼 오늘의 집</title>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid" style="background-color:  #00bfff;">
    <a class="navbar-brand" href="http://localhost:8080/member/memberList"><image src="../../../../resources/xdmin/image/hoem.png" width="100px" height="50px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      <form class="d-flex">
        <input class="form-control me-2" styletype="search" placeholder="통합 검색" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">search</button>
      </form>
  </div>
</nav>


  </head>
  <body style="float: left;">
  	<form id="form" name="form" method="POST" action="member/memberView">
    <input type="hidden" id="ifmmSeq" name="ifmmSeq">
    <h1 style="text-align: center;">회원상세</h1>
	<hr>
			<!-- <a href="#" type="button" class="btn btn-warning btn-lg" style="color:white; float: left;" onclick="here()">
			목록</a>
    		<a href="#" type="button" class="btn btn-info btn-lg" style="color:white; float: left;" onclick="here()" >
    		수정</a> 
    		<a href="#" type="button" class="btn btn-danger btn-lg" style="color:white; float: left;" onclick="here()" >
    		삭제</a>  -->
	<!-- Button trigger modal -->
		<div class="ccc">
    			<a class="btn btn-primary" href="/member/memberList?ifmmSeq=<c:out value="${rt.ifmmSeq}"/>&thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption }"/>&shValue=<c:out value="${vo.shValue }"/>">목	록</a>
				<a class="btn btn-info" style="color:white;" href="/member/memberEdit?ifmmSeq=<c:out value="${rt.ifmmSeq}"/>">수	정</a>
				<button type="button" class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" style="font-family: 잘풀리는하루; color:white;">삭	제</button>
		</div>
		<br><br>	
<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">경고</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        정말 지우시겠습니까?
      </div>
      <div class="modal-footer">
        <%-- <button href="/infra/code/codeGroupDele?ifmmSeq=<c:out value="${item.ifmmSeq}"/>" type="button" class="btn btn-primary" id="btnDelete"> 네(진행하기)</button> --%>
      	<a href="/member/memberListDele?ifmmSeq=<c:out value="${rt.ifmmSeq}"/>" class="btn btn-danger" id="btnDelete">삭제</a>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요(돌아가기)</button>
      </div>
    </div>
  </div>
</div>
    		
    		
	<hr>
	<div>
			<div class="row">
				<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2" style="margin:auto;">
					<img src="../../../../resources/xdmin/image/tomhardy.jpg" style="width: 150px; height: 150px;" class="rounded-circle border border-5">
				</div>
				<div class="col-4 col-md-1 mb-2">
				</div>
	</div>
	
	<table class="table table-hover">
<%-- <c:forEach items="${list}" var="item" varStatus="status">	 --%>
		<tr>
			<td rowspan="8" style="background-color:#00bfff; width:10px; color:white; padding-top: 110px;">인적사항</td>
			<td rowspan="2" style="background-color:#00bfff; color:white; text-align:center; margin:auto; width:80px; padding-top: 30px;">이름</td>
			<td style="background-color:#00bfff; color:white; width:80px;">한	글</td>
			<td ><c:out value="${rt.ifmmName}"/></td>
			<td style="background-color:#00bfff; color:white; width:130px;">비밀번호</td>
			<td><c:out value="${rt.ifmmPassword}"/></td>
			
		</tr>
	<%-- </c:forEach> --%>
		<tr>
			<td style="background-color:#00bfff; color:white;">영	어</td>
			<td></td>
			<td style="background-color:#00bfff; color:white;">비밀번호확인</td>
			<td><c:out value="${rt.ifmmPassword2}"/></td>
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">아이디</td>
			<td colspan="2"><c:out value="${rt.ifmmId}"/></td>
			<td style="background-color:#00bfff; color:white;">성별</td>
			<td colspan="2"><c:out value="${rt.ifcdName}"/></td>
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">E-Mail</td>
			<td colspan="2"><c:out value="${rt.ifmeEmailFull}"/></td>
			<td style="background-color:#00bfff; color:white;">통신사</td>
			<td><input type="radio" id="2" name="2" >&nbspSKT
					&nbsp<input type="radio" id="2" name="2" >&nbspKT
					&nbsp<input type="radio" id="2" name="2" >&nbspLG</td>

		</tr>
		
		<tr>
			<td style="background-color:#00bfff; color:white;">생일</td>
			<td colspan="2"><c:out value="${rt.ifmmDob}"/></td>
			<td style="background-color:#00bfff; color:white;">휴대폰</td>
			<td><c:out value="${rt.ifmpNumber}"/></td>
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">가입날짜</td>
			<td colspan="2"><fmt:formatDate value="${rt.regDateTime}" pattern="yyyy-MM-dd"/></td>
			<td style="background-color:#00bfff; color:white;">마케팅 수신동의</td>
			<td colspan="2">
			<input type="radio" id="" name=""  disabled>&nbsp Y
			<input type="radio" id="" name=""  checked  disabled>&nbspN
			</td>
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">주소</td>
			<td colspan="5"><c:out value="${rt.ifmaAddress1}"/></td>
		</tr>
		
		<tr>
			<td style="background-color:#00bfff; color:white;">상세주소</td>
			<td colspan="2"><c:out value="${rt.ifmaAddress2}"/></td>
			<td style="background-color:#00bfff; color:white; width:130px;">우편번호</td>
			<td colspan="2"><c:out value="${rt.ifmaZipcode}"/></td>
		</tr>
		
	</table>
	</div>
<div style="height:10px;"></div>
	<table class="table table-hover" >
		<tr>
			<td rowspan="4" style="background-color:#00bfff; color:white; width: 10px; padding-top: 40px;">구매정보</td>
			<td style="background-color:#00bfff; color:white;">제품명</td>
			<td style="background-color:#00bfff; color:white;">제품가격</td>
			<td style="background-color:#00bfff; color:white;">제품구매일</td>
			<td colspan="2" style="background-color:#00bfff; color:white;">환불여부</td>

			
		</tr>
		<tr>
			<td></td>
			<td>~ </td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td>~ </td>
			<td></td>
			<td></td>
		</tr>
		<tr style="padding: 10px;">
			<td></td>
			<td>~ </td>
			<td></td>
			<td></td>
		</tr>
	</table>
   <div style="height:10px;"></div>
    <div>
    <table  class="table table-hover" >
    	<tr>
    		<td rowspan="4" style="background-color:#00bfff; color:white; width: 10px; padding-top: 60px;">프로젝트</td>
    		<td style="background-color:#00bfff; color:white; width:150px;">프로젝트명</td>
    		<td colspan="2" style="background-color:#00bfff; color:white; width: 200px;">참여기간</td>
    		<td style="background-color:#00bfff; color:white; width:150px;">역할</td>
    		<td style="background-color:#00bfff; color:white; width: 150px;">위탁회사</td>
    	</tr>
    	<tr>
    			<td>엔비티 사이트 구축</td>
    			<td colspan="2">2015.12.12~ 2017.12.25</td>
    			<td>카테고리 정렬 및 구축</td>
    			<td>앤씨티</td>
    	</tr>
    	<tr>
    			<td>카카오 T 앱구축</td>
    			<td colspan="2">2013.12.12~ 2014.07.25</td>
    			<td>데이터베이스 관리</td>
    			<td>카카오</td>

    	</tr>
    	<tr>
    			<td>아프리카TV 플랫폼 개발</td>
    			<td colspan="2">2011.12.12~ 2012.09.11</td>
    			<td>데이터베이스 관리</td>
    			<td>아프리카TV</td>
 
    	</tr>
    	</table>
    	</div>
    	<div style="height:10px;"></div>
    	
    <table class="table table-hover" >
		<tr>
			<td rowspan="4" style="background-color:#00bfff; color:white; width:10px; padding-top: 40px;">가족사항</td>
			<td style="background-color:#00bfff; color:white;">관계</td>
			<td style="background-color:#00bfff; color:white;">성	명</td>
			<td style="background-color:#00bfff; color:white;">연 령</td>
			<td style="background-color:#00bfff; color:white;">합 력</td>
			<td style="background-color:#00bfff; color:white;">직 업</td>
			<td style="background-color:#00bfff; color:white;">동 거</td>
			<td class="aaa "rowspan="5" style="background-color:#00bfff; color:white; width: 10px; padding-top: 50px;">기타사항</td>
			<td colspan="2" style="background-color:#00bfff; color:white;">취득 자격증</td>
			
		</tr>
		<tr>
			<td>부</td>
			<td>존존스</td>
			<td>58</td>
			<td>대졸</td>
			<td>자영업자</td>
			<td>O</td>
			<td>정보처리기사</td>
		</tr>
		<tr>
			<td>모</td>
			<td>스칼렛 요한슨</td>
			<td>47</td>
			<td>대졸</td>
			<td>배우</td>
			<td>O</td>
			<td>빅데이터기사</td>
		<tr>
			<td>형</td>
			<td>톰 행크스</td>
			<td>35</td>
			<td>대졸</td>
			<td>회사원</td>
			<td>O</td>
		</tr>
	</table>

	</form>
</body>

 <script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>   
   
   	 	<script type="text/javascript">
   	 	
		$("#btnDelete").on("click", function(){ /* // 아이디면 샵 클래스면 점  btn 앞을 말한거다. */
		// confirm("진짜 삭제?") // alert 확인버튼 밖에 없다
		var answer = confirm("삭제 하시겠습니까?")
		
		});
	</script>
   	
    <script type="text/javascript">
			var myModal = document.getElementById('myModal')
			var myInput = document.getElementById('myInput')
			
			myModal.addEventListener('shown.bs.modal', function () {
			  myInput.focus()
			})
	</script>
    
    
 <!-- 이거   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 -->
 
			

<!-- 	<div class="ddd">    
  		<ul class="pagination ddd ">
  	<a class="page-link" href="#">Previous</a>
 	<a class="page-link" href="#">1</a>
    <a class="page-link" href="#">2</a>
    <a class="page-link" href="#">3</a>
    <a class="page-link" href="#">Next</a>
  		</ul>
</div>	
 -->
 	<script type="text/javascript"> /* 이거 영민님이 주신 박스 전체 체크 하는 기능 */

	function selectAll(selectAll) {
		const checkboxes 
			= document.getElementsByName("checkbox1");
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll.checked;
		})
	}
	</script>
 	

	
<!-- 	<script type="text/javascript">
		$("#btnupdateDelete").on("click", function(){ /* // 아이디면 샵 클래스면 점  btn 앞을 말한거다. */
		// confirm("진짜 삭제?") // alert 확인버튼 밖에 없다
		var answer = confirm("가짜삭제 하시겠습니까?")
		if(answer){
		}
			else {
			alert("취소")
			return false;
			}
		});
	</script> -->
	  
  
</html>