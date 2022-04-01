<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<%-- <form id="form" method="post" action="/member/memberInst">
	<input type="hidden" name="ifmmSeq" value=<c:out value="${item.ifmmSeq}"/>> <!-- 아이디 입력후 제출하겠다.-->
	<input type="text" name="ifmmId" placeholder="아이디" value=<c:out value="${item.ifmmId}"/>> <!-- 아이디 입력후 제출하겠다.-->
	<input type="text" name="ifmmName" placeholder="아이디" value=<c:out value="${item.ifmmName}"/>> <!-- 이름 입력후 제출하겠다. -->
	<input type="submit" value="제출">
</form> --%>

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="../../../../resources/xdmin/css/memberEdit.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/b322818db5.js"crossorigin="anonymous"></script>

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
<form id="form" method="post" action="/member/memberInst">
	<h1 style="text-align: center;">
		회원추가
	</h1>
	<hr>
	<a href="/member/memberList?ifmmSeq=<c:out value="${rt.ifmmSeq}"/>" type="button" class="btn btn-secondary">취	소</a>
	<a href="/member/memberList" type="button" class="btn btn-info" style="color:white;" onclick="here()">홈</a>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">추	가</button>

	<!-- Button trigger modal -->

	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">확인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">저장하시겠습니까?</div>
				<div class="modal-footer">
					<input type="submit"  class="btn btn-primary" id="btnSubmit" value="네">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
				</div>
			</div>
		</div>
	</div>


	<hr>
	<div>
		<div class="row">
			<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2"
				style="margin: auto;">
				<img src=""
					style="width: 150px; height: 150px;"
					class="rounded-circle border border-5 bbb">
			</div>
			<div class="col-4 col-md-1 mb-2"></div>
		</div>
<!-- <input type="text" id="ifmmSeq" name="ifmmSeq" placeholder="시퀀스번호" > -->

		<table class="table table-hover">
			<tr>
				<td rowspan="7" style="background-color: #00bfff; width: 10px; color: white; padding-top:110px;">인적사항</td>
				<td rowspan="2" style="background-color: #00bfff; color: white; text-align: center; margin: auto; width: 80px; padding-top: 30px;">이름</td>
				<td style="background-color: #00bfff; color: white; width: 80px;">한 글</td>
				<td><input type="text" id="ifmmName" name="ifmmName" placeholder="이름을 입력하세요" ></td>
				<td style="background-color: #00bfff; color: white; width: 130px;">주민등록번호</td>
				<td>
					<input type="text" id="" name=""  style="width: 150px;"> -
					<input type="text" id="" name=""  style="width: 150px;">
				</td>

			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">영 어</td>
				<td><input type="text" id="" name="" ></td>
				<td style="background-color: #00bfff; color: white;">성별</td>
				<td><input type="radio" id="7" name="7"  >&nbsp남
					&nbsp<input type="radio" id="7" name="7" >&nbsp여</td>
			</tr>
			
			<tr>
				<td style="background-color: #00bfff; color: white;">아이디</td>
				<td colspan="2"><input type="text" style="width:300px;" id="ifmmId" name="ifmmId" placeholder="아이디를 입력하세요"></td>
				<td style="background-color: #00bfff; color: white;">비밀번호</td>
				<td><input type="text" id="" name="" ></td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">E-Mail</td>
				<td colspan="2"><input type="text" style="width:300px;" id="ifmeEmailFull" name="ifmeEmailFull" placeholder="이메일을 입력하세요" ></td>
				<td style="background-color: #00bfff; color: white;">마케팅 수신동의</td>
				<td><input type="radio" id="2" name="2" >&nbsp예
					&nbsp<input type="radio" id="2" name="2" >&nbsp아니오</td>

			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">가입날짜</td>
				<td colspan="2"><input type="text" style="width:300px;" id="regDateTime" name="regDateTime" placeholder="가입날짜를 입력하세요" ></td>
				<td style="background-color: #00bfff; color: white;">휴대폰</td>
				<td><input type="text" id="ifmpNumber" name="ifmpNumber" placeholder="핸드폰번호를 입력해주세요" ></td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">결혼여부</td>
				<td colspan="2"><select >
						<option selected>::결혼여부::</option>
						<option>미혼</option>
						<option>기혼</option>
						<option>재혼</option>
				</select></td>
				<td style="background-color: #00bfff; color: white;">자녀여부</td>
				<td colspan="2"><input type="radio" id="1" name="1" >&nbsp
					Y &nbsp<input type="radio" id="1" name="1"  >&nbspN</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">주 소</td>
				<td colspan="5">
					<input type="text" style="width:500px;" id="sample6_address" name="sample6_address" placeholder="주소" >
					<input type="text" id="sample6_postcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
					<br><br>
					<input type="text" id="sample6_extraAddress" style="width:500px;" placeholder="참고항목">
					<input type="text" id="sample6_detailAddress" placeholder="상세주소">
	
	
	
<!-- <div class="input-group input-group-sm">
<input type="text" id="ifmaZipcodeArray0" value="" placeholder="우편번호" class="form-control" >
<button type="button" id="btnAddress" class="btn btn-outline-secondary"><i class="fas fa-search"></i></button> <br>
<button type="button" id="btnAddress" class="btn btn-outline-secondary" onclick="sample6_execDaumPostcode()"><i class="fas fa-search"></i></button> <br>
<button type="button" id="btnAddressClear" class="btn btn-outline-secondary"><i class="fa-solid fa-x"></i></button> <br>
</div> -->

<!-- <input type="text" id="ifmaAddress1Array0" value="" placeholder="상세주소" readonly>
<input type="text" id="ifmaAddress2Array0" value="" maxlength="50" placeholder="참고항목"> -->
				</td>
			</tr>

		</table>
	</div>
	<div style="height: 10px;"></div>
	<table class="table table-hover">
		<tr>
			<td rowspan="4" style="background-color:#00bfff; color:white; width: 10px; padding-top: 40px;">구매정보</td>
			<td style="background-color:#00bfff; color:white;">제품명</td>
			<td style="background-color:#00bfff; color:white;">제품가격</td>
			<td style="background-color:#00bfff; color:white;">제품구매일</td>
			<td colspan="2" style="background-color:#00bfff; color:white;">환불여부</td>

			
		</tr>
		<tr>
			<td><input type="text" id="" name="" ></td>
			<td><input type="date"> ~
			<input type="date"></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="text" id="" name="" ></td>
		</tr>
		<tr>
			<td><input type="text" id="" name="" ></td>
			<td><input type="date"> ~
			<input type="date" ></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="text" id="" name="" ></td>
		</tr>
		<tr style="padding: 10px;">
			<td><input type="text" id="" name="" ></td>
			<td><input type="date" > ~
			<input type="date" ></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="text" id="" name="" ></td>
		</tr>
	</table>
	<div style="height: 10px;"></div>
	<div>
		<table class="table table-hover">
			<tr>
				<td rowspan="4"
					style="background-color: #00bfff; color: white; width: 10px; padding-top: 60px;">프로젝트</td>
				<td style="background-color: #00bfff; color: white; width: 150px;">프로젝트명</td>
				<td colspan="2"
					style="background-color: #00bfff; color: white; width: 200px;">참여기간</td>
				<td style="background-color: #00bfff; color: white; width: 150px;">역할</td>
				<td style="background-color: #00bfff; color: white; width: 150px;">위탁회사</td>
			</tr>
			<tr>
				<td><input type="text" id="" name="" ></td>
				<td colspan="2">
				<input type="date" > ~
				<input type="date" ></td>
				<td><input type="text" id="" name=""></td>
				<td><input type="text" id="" name="" ></td>
			</tr>
			<tr>
				<td><input type="text" id="" name="" ></td>
				<td colspan="2">
				<input type="date" > ~
				<input type="date" ></td>
				<td><input type="text" id="" name=""></td>
				<td><input type="text" id="" name="" ></td>

			</tr>
			<tr>
				<td><input type="text" id="" name="" ></td>
				<td colspan="2">
				<input type="date" > ~
				<input type="date" ></td>
				<td><input type="text" id="" name="" ></td>
				<td><input type="text" id="" name="" ></td>

			</tr>
		</table>
	</div>
	<div style="height: 10px;"></div>

	<table class="table table-hover">
		<tr>
			<td rowspan="4"
				style="background-color: #00bfff; color: white; width: 10px; padding-top: 40px;">가족사항</td>
			<td style="background-color: #00bfff; color: white;">관계</td>
			<td style="background-color: #00bfff; color: white;">성 명</td>
			<td style="background-color: #00bfff; color: white;">연 령</td>
			<td style="background-color: #00bfff; color: white;">합 력</td>
			<td style="background-color: #00bfff; color: white;">직 업</td>
			<td style="background-color: #00bfff; color: white;">동 거</td>
			<td class="aaa " rowspan="5"
				style="background-color: #00bfff; color: white; width: 10px; padding-top: 50px;">기타사항</td>
			<td colspan="2" style="background-color: #00bfff; color: white;">취득
				자격증</td>

		</tr>
		<tr>
			<td><select >
						<option>::관계::</option>
						<option>아버지<option>
						<option>아버지</option>
						<option>아머니</option>
						<option>누나</option>
						<option>형</option>
						<option>남동생</option>
						<option>여동생</option>
						<option>오빠</option>
						<option>언니</option>
				</select></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="text" id="" name="" style="width: 50px;"></td>
			<td><select >
						<option>::학 력::</option>
						<option>대졸</option>
						<option>초졸</option>
						<option>중졸</option>
						<option>대재</option>
						<option>대학원졸</option>
				</select></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="radio" id="3" name="6" >&nbspYes
					&nbsp<input type="radio" id="6" name="6" >&nbspNo</td>
			<td><input type="text" id="" name="" ></td>
		</tr>
		<tr>
			<td><select >
						<option>::관계::</option>
						<option>어머니</option>
						<option>아버지</option>
						<option>아머니</option>
						<option>누나</option>
						<option>형</option>
						<option>남동생</option>
						<option>여동생</option>
						<option>오빠</option>
						<option>언니</option>
				</select></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="text" id="" name=""  style="width: 50px;"></td>
			<td><select >
						<option>::학 력::</option>
						<option>대졸</option>
						<option>초졸</option>
						<option>중졸</option>
						<option>대재</option>
						<option>대학원졸</option>
				</select></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="radio" id="3" name="5"  >&nbspYes
					&nbsp<input type="radio" id="5" name="5" >&nbspNo</td>
			<td><input type="text" id="" name="" ></td>
		<tr>
			<td><select >
						<option>::관계::</option>
						<option>형</option>
						<option>아버지</option>
						<option>아머니</option>
						<option>누나</option>
						<option>형</option>
						<option>남동생</option>
						<option>여동생</option>
						<option>오빠</option>
						<option>언니</option>
				</select></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="text" id="" name=""  style="width: 50px;"></td>
			<td><select >
						<option>::학 력::</option>
						<option>대졸</option>
						<option>초졸</option>
						<option>중졸</option>
						<option>대재</option>
						<option>대학원졸</option>
				</select></td>
			<td><input type="text" id="" name="" ></td>
			<td><input type="radio" id="3" name="3"  >&nbspYes
					&nbsp<input type="radio" id="3" name="3">&nbspNo</td>
		</tr>
	</table>

</form>

</body>

	<script type="text/javascript">
			var myModal = document.getElementById('myModal')
			var myInput = document.getElementById('myInput')
			
			myModal.addEventListener('shown.bs.modal', function () {
			  myInput.focus()
			})
	</script>


	<!-- 이거   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 -->

	<script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../../../../resources/xdmin/js/validation.js"></script>

	<script type = "text/javascript">
		$("#btnSubmit").on("click", function() {
			
			if(!checkNull($("#ifmmName"), $("#ifmmName").val(), "이름을 입력해주세요")) return false;
			if(!checkNull($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력해주세요")) return false;
			if(!checkNull($("#ifmpNumber"), $("#ifmpNumber").val(), "번호를 입력해주세요")) return false;
			if(!checkNull($("#ifmeEmailFull"), $("#ifmeEmailFull").val(), "이메일을 입력해주세요")) return false;
			if(!checkNull($("#regDateTime"), $("#regDateTime").val(), "시간을 입력해주셍!")) return false;

			});
	</script>
	<!-- <script type = "text/javascript">
		$("#btnSubmit").on("click", function() {
	
			/* if(!checkNull($("#shIfcgName"), $("#shIfcgName").val(), "코드그룹이름을 입력해 주세요!")) return false; */ 
			
			if(!checkNull($("#ifmmName"), $("#ifmmName").val(), "이름을 입력해주세요")) return false;
			if(!checkNull($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력해주세요")) return false;
			if(!checkNull($("#ifmpNumber"), $("#ifmpNumber").val(), "번호를 입력해주세요")) return false;
			if(!checkNull($("#ifmeEmailFull"), $("#ifmeEmailFull").val(), "이메일을 입력해주세요")) return false;
			if(!checkNull($("#regDateTime"), $("#regDateTime").val(), "시간을 입력해주셍!")) return false;

			});	
			/* if(!checkId($("#Id") ) ) return false;
			if(!checkPassword($("#password") ) ) return false;
			if(!checkSamePassword($("#"), $("#").val(), "시간을 입력해주셍!")) return false;
			if(!checkContact($("#"), $("#").val(), "시간을 입력해주셍!")) return false;
			 */
			$("#btnSubmit2").on("click", function() {
				
				alert("2번째 버튼 입니다.!")
			});	
			 
	</script> -->


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
	<script type="text/javascript">

			function selectAll(selectAll) {
				const checkboxes 
					= document.getElementsByName("checkbox1");
				
				checkboxes.forEach((checkbox) => {
					checkbox.checked = selectAll.checked;
				})
			}

	</script>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	    function sample6_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var addr = ''; // 주소 변수
	                var extraAddr = ''; // 참고항목 변수
	
	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                    addr = data.roadAddress;
	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                    addr = data.jibunAddress;
	                }
	
	                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	                if(data.userSelectedType === 'R'){
	                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // 건물명이 있고, 공동주택일 경우 추가한다.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // 조합된 참고항목을 해당 필드에 넣는다.
	                    document.getElementById("sample6_extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("sample6_extraAddress").value = '';
	                }
	
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample6_postcode').value = data.zonecode;
	                document.getElementById("sample6_address").value = addr;
	                // 커서를 상세주소 필드로 이동한다.
	                document.getElementById("sample6_detailAddress").focus();
	            }
	        }).open();
	    }
	</script>


</html>
	