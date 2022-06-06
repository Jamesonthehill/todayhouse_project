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
    <a class="navbar-brand" href="http://localhost:8070/member/memberList"><image src="../../../../resources/xdmin/image/hoem.png" width="100px" height="50px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
  </div>
</nav>

</head>

<body style="float: center;">
<form id="formList" name="formList" method="POST">
	<%-- <input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">  --%>
	<input type="hidden" id="ifmmSeq" name="ifmmSeq" value="<c:out value="${rt.ifmmSeq}"/>">
	<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage}"/>">
	
		<h1 style="text-align: center;">
			회원정보수정
		</h1>
	<hr>
	<!-- Button trigger modal -->
	<a class="btn btn-secondary" href="javascript:goView(<c:out value="${rt.ifmmSeq}"/>)">취	소</a>
	<a href="/member/memberList" type="button" class="btn btn-info" style="color:white;" onclick="here()">홈</a>
	<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">저	장</button>


	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
				<a class="btn btn-primary"  href="javascript:goUpdt(<c:out value="${rt.ifmmSeq}"/>)" type="submit" id="btnSubmit">저 장</a>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
				
				</div>
			</div>
		</div>
	</div>


	<hr>
	<div>
		<div class="row">
			<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2" style="margin: auto;">
				<img src="/resources/uploaded/<c:out value="${rt.uuidFileName}"/>" style="width: 150px; height: 150px;" class="rounded-circle border border-5 bbb">
			</div>
			<div class="col-4 col-md-1 mb-2"></div>
		</div>


		<table class="table table-hover">
			<tr>
				<td rowspan="7"
					style="background-color: #00bfff; width: 10px; color: white; padding-top:110px;">인적사항</td>
				<td rowspan="2"
					style="background-color: #00bfff; color: white; text-align: center; margin: auto; width: 80px; padding-top: 30px;">이름</td>
				<td style="background-color: #00bfff; color: white; width: 80px;">한		글</td>
				<td><input class="form-control me-2" type="text" id="ifmmName" name="ifmmName" value="${rt.ifmmName}" autocomplete="off"/></td>
				<td style="background-color: #00bfff; color: white; width: 130px;">비밀번호</td>
				<td><input class="form-control me-2" type="text" id="ifmmPassword" name="ifmmPassword" value="${rt.ifmmPassword}" autocomplete="off"/></td>
			
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">영 어</td>
				<td><input class="form-control me-2" type="text" id="ifmmNameEng" name="ifmmNameEng"  value="${rt.ifmmNameEng}" autocomplete="off"/></td>
				<td style="background-color: #00bfff; color: white;">비밀번호확인</td>
				<td><input class="form-control me-2" type="text" id="ifmmPassword2" name="ifmmPassword2" value="${rt.ifmmPassword2}" autocomplete="off"></td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">아이디</td>
				<td colspan="2"><input class="form-control me-2" type="text" id="ifmmId" name="ifmmId" value="${rt.ifmmId}" autocomplete="off"></td>
				<td style="background-color: #00bfff; color: white;">성별</td>
				<td>
				<%-- <c:when test="${rt.ifmmGenderCd eq '남성' }"><input type="radio" id="ifmmGenderCd" name="ifmmGenderCd"  checked >&nbsp남</c:when>
				<c:when test="${rt.ifmmGenderCd eq '여성' }"><input type="radio" id="ifmmGenderCd" name="ifmmGenderCd"  checked>&nbsp여</c:when>
--%>				
			<!-- 		<td style="background-color: #00bfff; color: white;">성별</td>
				<td>
				<input type="radio" id="ifmmGenderCd" name="ifmmGenderCd" value="3" >&nbsp남
				<input type="radio" id="ifmmGenderCd" name="ifmmGenderCd" value="4">&nbsp여</td> -->
				<input type="radio"  id="ifmmGenderCd" name="ifmmGenderCd"  value="3">&nbsp남
				<input type="radio"  id="ifmmGenderCd" name="ifmmGenderCd"  value="4">&nbsp여
				</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">E-Mail</td>
				<td colspan="2"><input class="form-control me-2" type="text"  id="ifmeEmailFull" name="ifmeEmailFull" value="${rt.ifmeEmailFull}" autocomplete="off"></td>
				<td style="background-color: #00bfff; color: white;">통신사</td>
				<td>
				<input type="radio" id="ifmpTelecomCd" name="ifmpTelecomCd" value="29">&nbspSK
				<input type="radio" id="ifmpTelecomCd" name="ifmpTelecomCd" value="30">&nbspKT
				<input type="radio" id="ifmpTelecomCd" name="ifmpTelecomCd" value="31">&nbspLG</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">국적</td>
				<td colspan="2">
					<select id="ifnSeq" name="ifnSeq">
							<option>::국적::
								<c:forEach items="${selectNation}" var="item" varStatus="status">
							<option <c:if test="${rt.ifnSeq eq 'rt.ifnSeq'}">selected</c:if>value="<c:out value="${item.ifnSeq}"/>"><c:out value="${item.ifnName}"/>
								</c:forEach>
					</select></td>
				<td style="background-color: #00bfff; color: white;">휴대폰</td>
				<td><input class="form-control me-2" type="text" id="ifmpNumber" name="ifmpNumber" value="${rt.ifmpNumber}" ></td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">생일</td>
				<td colspan="2"><input class="form-control me-2 shDate" type="text"  id="ifmmDob" name="ifmmDob" value="${rt.ifmmDob}" <fmt:formatDate value="${ifmmDob}" pattern="yyyy-MM-dd"/> ></td>
				<td style="background-color: #00bfff; color: white;">마케팅 수신동의</td>
				<td colspan="2">
				<input type="radio" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="35">&nbspEmail 
				<input type="radio" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="36">&nbspSns
				<input type="radio" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="37">&nbspPush</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">주 소</td>
				<td colspan="5">
					<input type="text" style="width:500px;" id="sample6_address" name="ifmaAddress1" value="${rt.ifmaAddress1}" placeholder="주소" >
					<input type="text" id="sample6_postcode" name="ifmaZipcode" value="${rt.ifmaZipcode}" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
					<br><br>
					<input type="text" id="sample6_extraAddress" name="ifmaAddress2" value="${rt.ifmaAddress2}" style="width:500px;" placeholder="상세주소">
					<input type="text" id="sample6_detailAddress" placeholder="참고항목">
					<br><br>
					<input type="text" id="ifmaLat" name="ifmaLat" value="${rt.ifmaLat}" <c:out value="${rt.ifmaLat}"/> maxlength="50" placeholder="위도" readonly>
					<input type="text" id="ifmaLng" name="ifmaLng" value="${rt.ifmaLng}" <c:out value="${rt.ifmaLng}"/> maxlength="50" placeholder="경도" readonly>
				</td>
			</tr>

<!-- 		
		</table>
	</div>
	<div style="height: 10px;"></div>
		<table class="table table-hover">
		<tr>
			<td rowspan="4" style="background-color:#00bfff; color:white; width: 10px; padding-top: 40px;">구매정보</td>
			<td style="background-color:#00bfff; color:white;">제품명</td>
			<td style="background-color:#00bfff; color:white;">제품구매일</td>
			<td style="background-color:#00bfff; color:white;">제품가격</td>
		</tr>
		<tr>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
			<td><input class="form-control me-2" type="date" ></td>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
		</tr>
		<tr>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
			<td><input class="form-control me-2" type="date" ></td>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
		</tr>
		<tr style="padding: 10px;">
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
			<td><input class="form-control me-2" type="date" ></td>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
		</tr>
	</table> -->


	

	</form>
</body>
	<script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="../../../../resources/xdmin/js/validation.js"></script> 
	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"/>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0729e498fb15ebd0272704ad5ebba933&libraries=services"></script>
	
	<script type="text/javascript">
		$("#btnSubmit").on("click", function() {
	
			/* if(!checkNull($("#shIfcgName"), $("#shIfcgName").val(), "코드그룹이름을 입력해 주세요!")) return false; */ 
			
			if(!checkNull($("#ifmmName"), $("#ifmmName").val(), "이름을 입력해주세요")) return false;
			if(!checkNull($("#ifmmId"), $("#ifmmId").val(), "아이디를 입력해주세요")) return false;
			if(!checkNull($("#ifmpNumber"), $("#ifmpNumber").val(), "번호를 입력해주세요")) return false;
			if(!checkNull($("#ifmeEmailFull"), $("#ifmeEmailFull").val(), "이메일을 입력해주세요")) return false;

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
			});
	</script>


	<script type="text/javascript">

	function selectAll(selectAll) {
		const checkboxes 
			= document.getElementsByName("checkbox1");
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll.checked;
		})};
	</script>
	
	<script>
	goUpdt = function(seq){
		/* $("#thisPage").val(seq); */
		$("#formList").attr("action", "/member/memberUpdt");
		$("#formList").submit();
	};
	goView = function(seq){
		$("#formList").attr("action", "/member/memberView");
		$("#formList").submit();
	};
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
                
				// 주소-좌표 변환 객체를 생성
                var geocoder = new daum.maps.services.Geocoder();
				
				geocoder.addressSearch(addr, function(result, status){
					
					if (status == daum.maps.services.Status.OK) {
						document.getElementById("ifmaLat").value = result[0].y;
						document.getElementById("ifmaLng").value = result[0].x;
					}
					
				});
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
    
 	<script type="text/javascript">
 	
	$(document).ready(function(){
		 $("input.shDate").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
	</script>
	

</html>