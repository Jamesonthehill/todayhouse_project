<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>

		<link rel="stylesheet"	href="/resources/xdmin/css/memberForm.css">
					<!-- include 처리 1번 -->
					<%@include file="../include/pageHeader.jsp"%>
</head>

<body style="width: 1080px;">
		<form id="formList" name="formList" method="POST" action="/member/memberInst" enctype="multipart/form-data">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq">
		
	<h1 style="text-align: center;">
		회원등록
	</h1>
	<hr>
		<a type="button" class="btn btn-secondary" style="margin-left: 10px" href="/member/memberList?thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">취	소</a>
		<a href="/member/memberList" type="button" class="btn btn-info" style="color:white;" onclick="here()">홈</a>
		<!-- Button trigger modal -->
		<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">추	가</button>
	
		<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">확인</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body" style="text-align: center;">저장하시겠습니까?</div>
				<div class="modal-footer">
					<input type="submit"  class="btn btn-primary" id="btnSubmit" value="네"> 
					<%-- <a type="submit" class="btn btn-primary" id="btnSubmit" href="/member/memberInst?thisPage=<c:out value="${vo.thisPage}"/>&shOption=<c:out value="${vo.shOption}"/>&shValue=<c:out value="${vo.shValue}"/>">네</a> --%>
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">아니요</button>
				</div>
			</div>
		</div>
	</div>

	<hr>
		<div class="row">
			<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2" style="margin: auto;">
				<img style="width: 150px; height: 150px;" class="rounded-circle border border-5">
			</div>
			<div class="col-4 col-md-1 mb-2"></div>
		</div>
		<div class="col-sm-6 mt-3 mt-sm-0">
			<label for="file0" class="form-label input-file-button" style="float: left;">이미지첨부</label>
			<input class="form-control form-control-sm" type="file" id="file0" name="file0">
		</div>
 		<hr>
<!-- <input type="text" id="ifmmSeq" name="ifmmSeq" placeholder="시퀀스번호" > -->

		<table class="table table-hover">
			<tr>
				<td rowspan="8" style="background-color: #00bfff; width: 10px; color: white; padding-top:110px;">인적사항</td>
				<td rowspan="2" style="background-color: #00bfff; color: white; text-align: center; margin: auto; width: 80px; padding-top: 30px;">이름</td>
				<td style="background-color: #00bfff; color: white; width: 80px;">한 글</td>
				<td><input class="form-control me-2" type="text" id="ifmmName" name="ifmmName" placeholder="이름을 입력하세요" autocomplete="off"></td>
				<td style="background-color: #00bfff; color: white; width: 130px;">비밀번호</td>
				<td><input class="form-control me-2" type="text" id="ifmmPassword" name="ifmmPassword"  placeholder="비밀번호를 입력하세요" autocomplete="off"></td>
				<div class="valid-feedback" id="ifmmPwdValidFeedBack">사용가능한 비밀번호입니다.</div>
				<div class="invalid-feedback" id="ifmmPwdInvalidFeedBack">사용 불가능한 비밀번호입니다.</div>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">영 어</td>
				<td><input class="form-control me-2" type="text" id="ifmmNameEng" name="ifmmNameEng" placeholder="영어이름을 입력하세요" autocomplete="off" ></td>
				<td style="background-color: #00bfff; color: white;">비밀번호확인</td>
				<td><input class="form-control me-2" type="password" id="ifmmPassword2" name="ifmmPassword2" placeholder="비밀번호를 입력하세요" autocomplete="off"></td>
				<div class="valid-feedback" id="ifmmPwdConfirmValidFeedBack">비밀번호가 일치합니다.</div>
				<div class="invalid-feedback" id="ifmmPwdConfirmInvalidFeedBack">비밀번호가 일치하지 않습니다.</div>
			</tr>
			
			<tr>
				<td style="background-color: #00bfff; color: white;">아이디</td>
				<td colspan="2"><input class="form-control me-2" type="text" id="ifmmId" name="ifmmId" placeholder="아이디를 입력하세요" autocomplete="off"></td>
				<td style="background-color: #00bfff; color: white;">성별</td>
				<td>
				<input type="radio" id="ifmmGenderCd" name="ifmmGenderCd" value="3" >&nbsp남
				<input type="radio" id="ifmmGenderCd" name="ifmmGenderCd" value="4">&nbsp여</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">E-Mail</td>
				<td colspan="2"><input class="form-control me-2" type="text"  id="ifmeEmailFull" name="ifmeEmailFull" placeholder="이메일을 입력하세요" autocomplete="off"></td>
				<td style="background-color: #00bfff; color: white;">통신사</td>
				<td><input type="radio" id="ifmpTelecomCd" name="ifmpTelecomCd" value="29" >&nbspSKT
					<input type="radio" id="ifmpTelecomCd" name="ifmpTelecomCd" value="30">&nbspKT
					<input type="radio" id="ifmpTelecomCd" name=ifmpTelecomCd value="31">&nbspLG</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">생일</td>
				<td colspan="2"><input class="form-control me-2 shDate"  type="text" id="ifmmDob" name="ifmmDob" <fmt:formatDate value="${ifmmDob}" pattern="yyyy-MM-dd"/> placeholder="생일을 선택하세요" autocomplete="off" ></td>
				<td style="background-color: #00bfff; color: white;">휴대폰</td>
				<td><input class="form-control me-2" type="text" id="ifmpNumber" name="ifmpNumber" placeholder="핸드폰번호를 입력해주세요" autocomplete="off"></td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">국적</td>
				<td colspan="2">
					<select style="float: left;" id="ifnSeq" name="ifnSeq">
							<option value="0" selected>::국적::
								<c:forEach items="${selectNation}" var="item" varStatus="status">
							<option  value="<c:out value="${item.ifnSeq}"/>"><c:out value="${item.ifnName}"/>
								</c:forEach>
					</select></td>
				<td style="background-color: #00bfff; color: white;">마케팅 수신동의</td>
				<td colspan="2">
				<input type="radio" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="35">&nbspEmail 
				<input type="radio" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="36">&nbspSns
				<input type="radio" id="ifmmEmailConsentNy" name="ifmmEmailConsentNy" value="37">&nbspPush
				</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">주 소</td>
				<td colspan="5">
					<input type="text" style="width:500px;" id="sample6_address" name="ifmaAddress1" placeholder="주소" >
					<input type="text" id="sample6_postcode" name="ifmaZipcode" placeholder="우편번호">
					<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
					<br><br>
					<input type="text" id="sample6_extraAddress" name="ifmaAddress2" style="width:500px; float:left;" placeholder="상세주소">
					<input type="text" id="sample6_detailAddress" style="float: left; margin-left: 10px;" placeholder="참고항목">
					<br><br>
					<input type="text" id="ifmaLat" name="ifmaLat" style="float: left;" value="${item.ifmaLat}" maxlength="50" placeholder="위도" readonly>
					<c:out value="${rt.ifmaLat}"/>
					<input type="text" id="ifmaLng" name="ifmaLng" style="float: left; margin-left: 10px;" <c:out value="${item.ifmaLng}"/> maxlength="50" placeholder="경도" readonly>
				</td>
			</tr>
			<tr>
				<td style="background-color: #00bfff; color: white;">첨부파일</td>
				<td colspan="5" class="text-start">
						<div class="addScroll" style="height: 150px;">
						<label for="file1" class="form-label input-file-button">파일첨부(Click)</label>
						<input class="form-control form-control-sm" id="file1" name="file1" onChange="upload(1, 1);" type="file" multiple="multiple" style="display:none;">
							<ul id="ulFile1" class="list-group"></ul>
						</div>
					
				</td>
			</tr>
		</table>
<!-- 	
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
			<td><input class="form-control me-2" type="date"></td>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
		</tr>
		<tr>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
			<td><input class="form-control me-2" type="date"></td>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
		</tr>
		<tr style="padding: 10px;">
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
			<td><input class="form-control me-2" type="date" ></td>
			<td><input class="form-control me-2" type="text" id="" name="" ></td>
		</tr>

	</table>

	<div style="height: 10px;"></div>
 -->
	

</form>

</body>

	<script type="text/javascript">
			var myModal = document.getElementById('myModal')
			var myInput = document.getElementById('myInput')
			
	</script>


	<!-- 이거   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
 -->
	
	<script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script>
	<script src="/resources/xdmin/js/validation.js"></script> 
	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"/>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0729e498fb15ebd0272704ad5ebba933&libraries=services"></script>
<!-- 	<script src="/resources/common/js/commonXdmin.js"></script>
	<script src="/resources/common/js/constantsXdmin.js"></script> 그거 다운로드 하는데 필요한 함수들이엇음
	<script src="/resources/common/js/common.js"></script> -->
	 <script type = "text/javascript">
		$("#btnSubmit").on("click", function() {
			
			if(!checkNull($("#ifmmName"), $("#ifmmName").val(), "이름을 입력해주세요")) return false;
			if(!checkNull($("#ifmmPassword2"), $("#ifmmPassword2").val(), "비밀번호를 입력해주세요")) return false;
			if(!checkNull($("#ifmmDob"), $("#ifmmDob").val(), "생일을 입력해주세요")) return false;
			if(!checkNoSelect($("#ifnSeq"),$("#ifnSeq").val(), "국적을 선택해주세요")) return false;
			}
			});
			/*  if(!checkId($("#Id") ) ) return false;
			if(!checkPassword($("#password") ) ) return false;
			if(!checkSamePassword($("#"), $("#").val(), "시간을 입력해주셍!")) return false;
			if(!checkContact($("#"), $("#").val(), "시간을 입력해주셍!")) return false;
			$("#btnSubmit2").on("click", function() {
				
				alert("2번째 버튼 입니다.!")
			});	
			  */
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
		
		
		<script type="text/javascript"> //  POST방식전환
		
		goList = function(seq) {
			alert(seq);
			// form 객체를 가져온다
			$("#thisPage").val(seq);
			$("#formList").submit();
			// 그 가져온 객체를 전달한다.
		};
		
		goForm = function(seq){
			$("#ifmmSeq").val(seq);
			$("#formList").attr("action", "/member/memberList");
			$("#formList").submit();
			}
		
		}
	</script>
	
	

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	
	<script type="text/javascript">
/* 	var address = document.getElementById("address");
	var mapContainer = document.getElementById("map");
	var x,y = "";
	
	var map = new daum.maps.map(mapContainer, mapOption);;
 */
	
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
	
	<script type="text/javascript">
					/* lat and lng from address s */
 				
				// 주소-좌표 변환 객체를 생성
				var geocoder = new daum.maps.services.Geocoder();
				
				// 주소로 좌표를 검색
				geocoder.addressSearch(Addr, function(result, status) {
				 
					// 정상적으로 검색이 완료됐으면,
					if (status == daum.maps.services.Status.OK) {
						
						document.getElementById("ifmaLat").value=result[0].x;
						document.getElementById("ifmaLng").value=result[0].y;
						
					}
				}
				
/* 						
						var coords = new daum.maps.LatLng(result[0].y, result[0].x);
				
						y = result[0].x;
						x = result[0].y;
				
						// 결과값으로 받은 위치를 마커로 표시합니다.
						var marker = new daum.maps.Marker({
							map: map,
							position: coords
						});
				
						// 인포윈도우로 장소에 대한 설명표시
						var infowindow = new daum.maps.InfoWindow({
							content: '<div style="width:150px;text-align:center;padding:5px 0;">좌표위치</div>'
						});
				
						infowindow.open(map,marker);
				
						// 지도 중심을 이동
						map.setCenter(coords);
						
						document.getElementById("ifmaLatArray0").value=x;
						document.getElementById("ifmaLngArray0").value=y;
 */					
 				</script>
		<script type="text/javascript">
	$(function() {
		$("#ifmmPwdValidFeedBack").hide();
		$("#ifmmPwdInvalidFeedBack").hide();
		$("#ifmmPwdConfirmValidFeedBack").hide();
		$("#ifmmPwdConfirmInvalidFeedBack").hide();
		$("input")
				.keyup(
						function() {
							var pwd1 = $("#ifmmPassword").val();
							var pwd2 = $("#ifmmPassword2").val();
							var regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*]).{8,20}$/;
							if (regExp.test(pwd1)) {
								$("#ifmmPassword").addClass("is-valid");
								$("#ifmmPassword").removeClass("is-invalid");
								$("#ifmmPwdValidFeedBack").show();
								$("#ifmmPwdInvalidFeedBack").hide();
								$("#ifmmPassword2").removeAttr("disabled");
							} else if (!regExp.test(pwd1) && pwd1.length > 1) {
								$("#ifmmPassword").addClass("is-invalid");
								$("#ifmmPassword").removeClass("is-valid");
								$("#ifmmPwdValidFeedBack").hide();
								$("#ifmmPwdInvalidFeedBack").show();
								$("#ifmmPassword2").attr("disabled", "disabled");
							}
							if (pwd1 != "" && pwd2 != "") {
								if (pwd1 == pwd2) {
									$("#ifmmPassword2").addClass("is-valid");
									$("#ifmmPassword2").removeClass("is-invalid");
									$("#ifmmPwdConfirmValidFeedBack").show();
									$("#ifmmPwdConfirmInvalidFeedBack").hide();
									$("#btnSubmit").removeAttr("disabled");
								} else {
									$("#ifmmPassword2").addClass("is-invalid");
									$("#ifmmPassword2").removeClass("is-valid");
									$("#ifmmPwdConfirmValidFeedBack").hide();
									$("#ifmmPwdConfirmInvalidFeedBack").show();
									$("#btnSubmit").attr("disabled", "disabled");
								}
							}
						});
	});
</script>
	<!-- 확장자 제한 하는 js  -->
	<script src="/resources/common/js/checkUpload.js"></script>
	
	<script type="text/javascript">
	
	upload = function(seq, div) {
		
		$("#ulFile" + seq).children().remove();
		
		var fileCount = $("input[type=file]")[seq].files.length;
		//파일 개수 확인
		if(checkUploadedTotalFileNumber(fileCount, seq) == false) { return false; }
		
		var totalFileSize;
		
		for (var i = 0 ; i < fileCount ; i++) {
			if(div == 1) {
				if(checkUploadedAllExt($("input[type=file]")[seq].files[i].name, seq) == false) { return false; }
			} else if(div == 2) {
				if(checkUploadedImageExt($("input[type=file]")[seq].files[i].name, seq) == false) { return false; }
			} else {
				return false;
			}
			
			if(checkUploadedEachFileSize($("input[type=file]")[seq].files[i].name, seq) == false ) { return false; }
			totalFileSize += $("input[type=file]")[seq].files[i].size;
		}
		
		if(checkUploadedTotalFileSize(totalFileSize, seq) == false) { return false; }
		
		for ( var i = 0 ; i < fileCount ; i++) {
			addUploadLi(seq, i, $("input[type=file]")[seq].files[i].name);
		}
		
	}
	
	addUploadLi = function (seq, i, name){
		
		
		var li = '';
		li += '<li id="li_' + seq + '_' + i + '" class="list-group-item d-flex justify-content-between align-items-center">';
		li += name;
		li += '<span style="cursor: pointer;" class="badge bg-danger rounded-circle" onClick="delLi(' + seq + ',' + i + ')"><i class="bi bi-x-circle"></i></span>';
		li += '</li>';		
		
		$("#ulFile" + seq).append(li);
		
	}
	
	delLi = function(seq, i) {
		$("#li_" + seq + "_" + i).remove();
	}
	
	</script>
	
<!-- 				/* lat and lng from address s */
				var geocoder = new daum.maps.services.Geocoder();
				geocoder.addressSearch(roadAddr, function(result, status) {
					if (status == daum.maps.services.Status.OK) {
						document.getElementById("ltltLat").value=result[0].y;
						document.getElementById("ltltLng").value=result[0].x;
						
						var moveLatLon = new kakao.maps.LatLng(result[0].y, result[0].x);
					    map.setCenter(moveLatLon);
					    
						var markerPosition  = new kakao.maps.LatLng(result[0].y, result[0].x); 
						var marker = new kakao.maps.Marker({ position: markerPosition });
						marker.setMap(null);   
						marker.setMap(map);
					}
				});
				/* lat and lng from address e */
				 -->
				 
				 
				 
 	<script type="text/javascript">
			$("#btnLogout").on("click", function() {
				$.ajax({
						async: true 
						,cache: false
						,type: "post"
						,url: "/member/logoutProc"
						,success: function(response) {
							if(response.rt == "success") {
								location.href = "/login/loginForm";
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
	