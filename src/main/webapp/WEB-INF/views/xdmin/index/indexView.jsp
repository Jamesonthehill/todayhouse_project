<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
	

<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../../css/memberView.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/b322818db5.js" crossorigin="anonymous"></script>
    <title>인테리어 플랫폼 오늘의 집</title>

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid" style="background-color:  #00bfff;">
    <a class="navbar-brand" href="../deltaMain.html"><image src="../../../manager_images/hoem.png" width="100px" height="50px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       	<li class="nav-item dropdown fff" > <!-- 눌럿을때 옵션이 바로 아래 떨어지게함 -->
          <a class="nav-link dropdown-toggle" style="width: 120px" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <i class="fas fa-cog"></i> 환경설정
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown" > <!-- 옵션 숨기기 버튼이라고 보면될듯, 이게없으면 옵션이 다 보임 -->
            <li><a class="dropdown-item"  href="#">회원목록</a></li>
            <li><a class="dropdown-item" href="#">회원추가</a></li>
            <li><hr class="dropdown-divider"></li> <!-- 섹션 나누는것을말함  -->
            <li><a class="dropdown-item" href="#">마일리지 </a></li>
          </ul>
        </li>
          
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <i class="fas fa-users" style="padding-right:5px"></i>회원상세
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">회원목록</a></li>
            <li><a class="dropdown-item" href="#">회원추가</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">회원메일발송 </a></li>
          </ul>
        </li>
          
       <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
       		<i class="fas fa-bars" style="padding-right:5px"></i>메뉴관리
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">메인메뉴관리</a></li>
            <li><a class="dropdown-item" href="#">상세메뉴관리</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">서브메뉴관리</a></li>
          </ul>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
         	<i class="fas fa-layer-group" style="padding-right:5px"></i>웹사이트관리
          </a>
        </li>
      <form class="d-flex">
        <input class="form-control me-2" styletype="search" placeholder="통합 검색" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">search</button>
      </form>
    </div>
  </div>
</nav>


</head>

  <body style="float: left;">
    sessSeq: <c:out value="${sessSeq}"/><br>
	sessName: <c:out value="${sessName}"/><br>
	sessId: <c:out value="${sessId}"/><br>
	<c:if test="${not empty sessSeq}">
		<button type="button" class="btn btn-danger btn-sm" name="" id="btnLogout"><i class="fa-solid fa-power-off"></i></button>
	</c:if>
	
	
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
    			<a href="./memberList.html" type="button" class="btn btn-warning"  style="color:white;" onclick="here()">목	록</a>
				<a href="./memberEdit.html" type="button" class="btn btn-info" style="color:white;" onclick="here()">수	정</a>
				<button type="button" class="btn btn-danger"  data-bs-toggle="modal" data-bs-target="#staticBackdrop" 
				style="font-family: 잘풀리는하루; color:white;">삭	제</button>
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
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요(돌아가기)</button>
        <button type="button" class="btn btn-primary"> 네(진행하기)</button>
      </div>
    </div>
  </div>
</div>
    		
    		
	<hr>
	<div>
			<div class="row">
				<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2" style="margin:auto;">
					<img src="../../../manager_images/tomhardy.jpg" style="width: 150px; height: 150px;" class="rounded-circle border border-5">
				</div>
				<div class="col-4 col-md-1 mb-2">
				</div>
	</div>
	

	<table class="table table-hover">
		<tr>
			<td rowspan="7" style="background-color:#00bfff; width:10px; color:white; padding-top: 110px;">인적사항</td>
			<td rowspan="2" style="background-color:#00bfff; color:white; text-align:center; margin:auto; width:80px; padding-top: 30px;">이름</td>
			<td style="background-color:#00bfff; color:white; width:80px;">한	글</td>
			<td >제임스</td>
			<td  style="background-color:#00bfff; color:white; width:130px;">주민등록번호</td>
			<td>971030-1199922</td>
			
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">영	어</td>
			<td>James</td>
			<td style="background-color:#00bfff; color:white;">성별</td>
			<td><input type="radio" id="" name="" checked disabled>&nbsp남
				&nbsp<input type="radio" id="" name="" disabled>&nbsp여</td>
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">아이디</td>
			<td colspan="2">Jamesonthehill</td>
			<td style="background-color:#00bfff; color:white;">비밀번호</td>
			<td>!jamesjames2221</td>

		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">E-Mail</td>
			<td colspan="2">sonnyheungmin@hanmail.net</td>
			<td style="background-color:#00bfff; color:white;">마케팅 수신동의</td>
			<td><input type="radio" id="" name="" checked disabled>&nbsp예
			&nbsp<input type="radio" id="" name="" disabled>&nbsp아니오</td>

		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">자택전화</td>
			<td colspan="2">02.543-0278</td>
			<td style="background-color:#00bfff; color:white;">휴대폰</td>
			<td>010-3394-2911</td>
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">결혼여부</td>
			<td colspan="2"><select disabled>
				<option>미혼</option>	
				<option>기혼</option>	
				<option>재혼</option>	
			</select></td>
			<td style="background-color:#00bfff; color:white;">자녀여부</td>
			<td colspan="2"><input type="radio" id="" name=""  disabled>&nbsp Y
				&nbsp<input type="radio" id="" name=""  checked  disabled>&nbspN</td>
		</tr>
		<tr>
			<td style="background-color:#00bfff; color:white;">주	소</td>
			<td colspan="5">경기도 성남시 수정구 복정동 아름마을로 102동 1101호</td>
		</tr>
		
	</table>
	</div>
<div style="height:10px;"></div>
	<table class="table table-hover" >
		<tr>
			<td rowspan="4" style="background-color:#00bfff; color:white; width: 10px; padding-top: 40px;">학력사항</td>
			<td style="background-color:#00bfff; color:white;">학교명</td>
			<td style="background-color:#00bfff; color:white;">재학기간</td>
			<td style="background-color:#00bfff; color:white;">전	공</td>
			<td colspan="2" style="background-color:#00bfff; color:white;">부전공</td>

			
		</tr>
		<tr>
			<td>신분당고등학교</td>
			<td>2013.03.01~ 2016.02.28</td>
			<td>이과</td>
			<td>X</td>
		</tr>
		<tr>
			<td>강남중학교</td>
			<td>2010.03.01~ 2013.02.28</td>
			<td>X</td>
			<td>X</td>
		</tr>
		<tr style="padding: 10px;">
			<td>뉴욕대</td>
			<td>2016.03.01~ 2022.02.28</td>
			<td>컴퓨터공학과</td>
			<td>X</td>
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
    
     </body>
    
 <script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>    
    
    <script type="text/javascript">
		var myModal = document.getElementById('myModal')
		var myInput = document.getElementById('myInput')
		
		myModal.addEventListener('shown.bs.modal', function () {
		  myInput.focus()
		})
	</script>
 

 	<script type="text/javascript">

	function selectAll(selectAll) {
		const checkboxes 
			= document.getElementsByName("checkbox1");
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll.checked;
		})
	}
	</script>
	<script type="text/javascript">
	$("#btnLogout").on("click", function() {
		$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/member/loginForm";
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
	});	
	</script>
</html>			