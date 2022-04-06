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
<link rel="stylesheet" href="../../../../resources/xdmin/css/memberEdit.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/b322818db5.js" crossorigin="anonymous"></script>
<title>인테리어 플랫폼 오늘의 집</title>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid" style="background-color:  #00bfff;">
    <a class="navbar-brand" href="http://localhost:8080/member/memberList"><image src="../../../../resources/xdmin/image/hoem.png" width="100px" height="50px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="통합 검색" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">search</button>
      </form> 
  </div>
</nav>

</head>

<body style="float: left;">
<form method="GET" action="/member/memberUpdt">
	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${rt.ifmmSeq}"/>">
	
		<h1 style="text-align: center;">
			회원정보수정
		</h1>
	<hr>
	<!-- Button trigger modal -->
	<a class="btn btn-secondary" href="/member/memberView?ifmmSeq=<c:out value="${rt.ifmmSeq}"/>">취	소</a>
	<a href="/member/memberList" type="button" class="btn btn-info" style="color:white;" onclick="here()">홈</a>
	<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">저	장</button>


	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">경고</h5>
					<button type="button"  class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">저장하시겠습니까?</div>
				<div class="modal-footer">
				
				<%-- <form method="GET" action="/member/memberUpdt?ifmmSeq=<c:out value="${rt.ifmmSeq}"/>"> --%>
					<input type="submit" id="btnSubmit" class="btn btn-primary" value="저장">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				
				</div>
			</div>
		</div>
	</div>


	<hr>
	<div>
		<div class="row">
			<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2"
				style="margin: auto;">
				<img src="../../../../resources/xdmin/image/tomhardy.jpg"
					style="width: 150px; height: 150px;"
					class="rounded-circle border border-5 bbb">
			</div>
			<div class="col-4 col-md-1 mb-2"></div>
		</div>


		<table class="table table-hover">
			<tr>
				<td rowspan="7"
					style="background-color: #00bfff; width: 10px; color: white; padding-top:110px;">인적사항</td>
				<td rowspan="2"
					style="background-color: #00bfff; color: white; text-align: center; margin: auto; width: 80px; padding-top: 30px;">이름</td>
				<td style="background-color: #00bfff; color: white; width: 80px;">한글</td>
				<td><input type="text" id="ifmmName" name="ifmmName" value="${rt.ifmmName}"/></td>
				<td style="background-color: #00bfff; color: white; width: 130px;">주민등록번호</td>
				<td>
				<input type="text" id="" name="" value="971030" style="width: 150px;"> -
				<input type="text" id="" name="" value="1199922" style="width: 150px;">
				</td>
			
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">영 어</td>
				<td><input type="text" id="" name="" value="James"></td>
				<td style="background-color: #00bfff; color: white;">성별</td>
				<td><input type="radio" id="7" name="7" checked >&nbsp남
					&nbsp<input type="radio" id="7" name="7" >&nbsp여</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">아이디</td>
				<td colspan="2"><input type="text" style="width:300px;" id="ifmmId" name="ifmmId" value="${rt.ifmmId}"></td>
				<td style="background-color: #00bfff; color: white;">비밀번호</td>
				<td><input type="text" id="" name="" value="${rt.ifmmPassword}"></td>

			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">E-Mail</td>
				<td colspan="2"><input type="text" style="width:300px;" id="ifmeEmailFull" name="ifmeEmailFull" value="${rt.ifmeEmailFull}"></td>
				<td style="background-color: #00bfff; color: white;">마케팅 수신동의</td>
				<td><input type="radio" id="2" name="2" checked >&nbsp예
					&nbsp<input type="radio" id="2" name="2" >&nbsp아니오</td>

			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">자택전화</td>
				<td colspan="2"><input type="text" style="width:300px;" id="" name="" value="02.543-0278" ></td>
				<td style="background-color: #00bfff; color: white;">휴대폰</td>
				<td><input type="text" id="ifmpNumber" name="ifmpNumber" value="${rt.ifmpNumber}"></td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">가입날짜</td>
				<td colspan="2"><input type="text" id="regDateTime" name="regDateTime" value="<fmt:formatDate value="${rt.regDateTime}" pattern="yyyy-MM-dd"/>"></td>
				<td style="background-color: #00bfff; color: white;">자녀여부</td>
				<td colspan="2"><input type="radio" id="1" name="1" >&nbsp
					Y &nbsp<input type="radio" id="1" name="1" checked >&nbspN</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">주 소</td>
				<td colspan="5"><input type="text" style="width:700px;" id="" name="" value="경기도 성남시 수정구 복정동 아름마을로 102동 1101호"></td>
			</tr>
		</table>
	</div>
	<div style="height: 10px;"></div>
	<table class="table table-hover">
		<tr>
			<td rowspan="4"
				style="background-color: #00bfff; color: white; width: 10px; padding-top: 40px;">학력사항</td>
			<td style="background-color: #00bfff; color: white;">학교명</td>
			<td style="background-color: #00bfff; color: white;">재학기간</td>
			<td style="background-color: #00bfff; color: white;">전 공</td>
			<td colspan="2" style="background-color: #00bfff; color: white;">부전공</td>


		</tr>
		<tr>
			<td><input type="text" id="" name="" value="신분당고등학교"></td>
			<td><input type="date" value="2013-03-01"> ~
			<input type="date" value="2016-02-28"></td>
			<td><input type="text" id="" name="" value="이과"></td>
			<td><input type="text" id="" name="" value="X"></td>
		</tr>
		<tr>
			<td><input type="text" id="" name="" value="강남중학교"></td>
			<td><input type="date" value="2010-03-01"> ~
			<input type="date" value="2013-02-28"></td>
			<td><input type="text" id="" name="" value="X"></td>
			<td><input type="text" id="" name="" value="X"></td>
		</tr>
		<tr style="padding: 10px;">
			<td><input type="text" id="" name="" value="뉴욕대"></td>
			<td><input type="date" value="2016-03-01"> ~
			<input type="date" value="2022-02-28"></td>
			<td><input type="text" id="" name="" value="컴퓨터공학과"></td>
			<td><input type="text" id="" name="" value="X"></td>
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
				<td><input type="text" id="" name="" value="엔비티 부동산 NFT"></td>
				<td colspan="2">
				<input type="date" value="2015-12-12"> ~
				<input type="date" value="2017-12-25"></td>
				<td><input type="text" id="" name="" value="카테고리 정렬 및 구축<"></td>
				<td><input type="text" id="" name="" value="앤씨티"></td>
			</tr>
			<tr>
				<td><input type="text" id="" name="" value="카카오 T 앱구축"></td>
				<td colspan="2">
				<input type="date" value="2013-12-12"> ~
				<input type="date" value="2014-07-25"></td>
				<td><input type="text" id="" name="" value="데이터베이스 관리"></td>
				<td><input type="text" id="" name="" value="카카오"></td>

			</tr>
			<tr>
				<td><input type="text" id="" name="" value="아프리카TV 플랫폼 개발"></td>
				<td colspan="2">
				<input type="date" value="2011-12-12"> ~
				<input type="date" value="2012-09-11"></td>
				<td><input type="text" id="" name="" value="데이터베이스 관리"></td>
				<td><input type="text" id="" name="" value="아프리카TV"></td>

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
			<td><input type="text" id="" name="" value="존존스"></td>
			<td><input type="text" id="" name="" value="58" style="width: 50px;"></td>
			<td><select >
						<option>대졸</option>
						<option>초졸</option>
						<option>중졸</option>
						<option>대졸</option>
						<option>대재</option>
						<option>대학원졸</option>
				</select></td>
			<td><input type="text" id="" name="" value="자영업자"></td>
			<td><input type="radio" id="3" name="6" checked >&nbspYes
					&nbsp<input type="radio" id="6" name="6" >&nbspNo</td>
			<td><input type="text" id="" name="" value="정보처리기사"></td>
		</tr>
		<tr>
			<td><select >
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
			<td><input type="text" id="" name="" value="스칼렛 요한슨"></td>
			<td><input type="text" id="" name="" value="47" style="width: 50px;"></td>
			<td><select >
						<option>대졸</option>
						<option>초졸</option>
						<option>중졸</option>
						<option>대졸</option>
						<option>대재</option>
						<option>대학원졸</option>
				</select></td>
			<td><input type="text" id="" name="" value="배우"></td>
			<td><input type="radio" id="3" name="5" checked >&nbspYes
					&nbsp<input type="radio" id="5" name="5" >&nbspNo</td>
			<td><input type="text" id="" name="" value="빅데이터기사"></td>
		<tr>
			<td><select >
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
			<td><input type="text" id="" name="" value="톰 행크스"></td>
			<td><input type="text" id="" name="" value="35" style="width: 50px;"></td>
			<td><select >
						<option>대졸</option>
						<option>초졸</option>
						<option>중졸</option>
						<option>대졸</option>
						<option>대재</option>
						<option>대학원졸</option>
				</select></td>
			<td><input type="text" id="" name="" value="회사원"></td>
			<td><input type="radio" id="3" name="3" checked >&nbspYes
					&nbsp<input type="radio" id="3" name="3">&nbspNo</td>
		</tr>
	</table>
	
	<input type="text" id="sample6_postcode" placeholder="우편번호">
<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
<input type="text" id="sample6_address" placeholder="주소"><br>
<input type="text" id="sample6_detailAddress" placeholder="상세주소">
<input type="text" id="sample6_extraAddress" placeholder="참고항목">
	
	
	
<div class="input-group input-group-sm">
<input type="text" id="ifmaZipcodeArray0" value="" placeholder="우편번호" class="form-control" >
<button type="button" id="btnAddress" class="btn btn-outline-secondary"><i class="fas fa-search"></i></button> <br>
<button type="button" id="btnAddressClear" class="btn btn-outline-secondary"><i class="fa-solid fa-x"></i></button> <br>
</div>

<input type="text" id="ifmaAddress1Array0" value="" placeholder="상세주소" readonly>
<input type="text" id="ifmaAddress2Array0" value="" maxlength="50" placeholder="참고항목">

	</form>
</body>
	<script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="C:\factory\ws_sts_4130\todayhouse_project\src\main\webapp\resources\xdmin\js"></script>
	
	<script type = "text/javascript">
		$("#btnSubmit").on("click", function() {
	
			/* if(!checkNull($("#shIfcgName"), $("#shIfcgName").val(), "코드그룹이름을 입력해 주세요!")) return false; */ 
			
			if(!checkNull($("#ifmmName"), $("#ifmmName").val(), "이름을 입력해주세요")) return false;
			if(!checkNull($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력해주세요")) return false;
			if(!checkNull($("#ifmpNumeber"), $("#ifmpNumeber").val(), "번호를 입력해주세요")) return false;
			if(!checkNull($("#ifmeEmailFull"), $("#ifmeEmailFull").val(), "이메일을 입력해주세요")) return false;
			if(!checkNull($("#regDateTime"), $("#regDateTime").val(), "시간을 입력해주셍용!")) return false;

			});	
			/* if(!checkId($("#Id") ) ) return false;
			if(!checkPassword($("#password") ) ) return false;
			if(!checkSamePassword($("#"), $("#").val(), "시간을 입력해주셍!")) return false;
			if(!checkContact($("#"), $("#").val(), "시간을 입력해주셍!")) return false;
			 */
	</script>

	<script type="text/javascript">
			var myModal = document.getElementById('myModal')
			var myInput = document.getElementById('myInput')
			
			myModal.addEventListener('shown.bs.modal', function () {
			  myInput.focus()
			})
	</script>



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
    

    
    
	<script>
	    $("#btnAddress").on("click", function(){
    	sample4_execDaumPostcode();
    });
    
    $("#btnAddressClear").on("click", function(){
    	$("#ifmaZipcodeArray0").val('');
    	$("#ifmaAddress1Array0").val('');
    });
    </script>

</html>