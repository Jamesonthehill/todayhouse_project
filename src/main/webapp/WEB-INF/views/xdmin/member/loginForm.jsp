<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
	
<!--     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../../../resources/user/css/login.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/b322818db5.js" crossorigin="anonymous"></script>
<title>로그인 폼</title>
	 -->
	 
	 
	 <!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<script src="https://kit.fontawesome.com/b322818db5.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../../../../resources/user/css/login.css">
<!-- stylesheet은 참조하겟다 login.css 이파일을  -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>로그인 폼</title>
	
</head>

<body>
	<!-- 	<video autoplay="" muted="" loop="">
	<source src="../../video/couple.mp4" type="video/mp4"  style="max-width: 100%" >
	</video> -->
	<div class="main_div">
	<div style="padding-left: 75px">
		<img src="../../../../resources/xdmin/image/hoem.png" width="150px" >
	</div><br>
		<div class="title">로그인</div>
		<form action="#">
			<div class="input_box">
				<input type="text" id="ifmmId" name="ifmmId" placeholder="Email or Phone" maxlength="30">
				<div class="icon">
					<i class="fas fa-user"></i>
				</div>
			</div>
			<div style="float: right; ">
				<Span><a href="#">아이디찾기</a></Span>
			</div>
			<br>
			<div class="input_box">
				<input type="password" id="ifmmPassword" name="ifmmPassword" placeholder="Password" maxlength="16">
				<div class="icon">
					<i class="fas fa-lock"></i>
				</div>
			</div>
			<!-- option_div 다른걸로 바꿔주기 pw 에도 적용해줘야됨 css에서  -->
			<div class="form-check form-switch">
				<input class="form-check-input" type="checkbox"
					id="flexSwitchCheckChecked" checked> <span><a
					href="#">자동로그인</a></span>
			</div>
			<div class="forget_div">
				<Span><a href="#">비밀번호찾기</a></Span>
			</div>
			<div class="input_box button fff">
				<!--...이거 때문에 계속 가운데 정렬이 안됐던거네,, div에다가 넣어줘야됨
					input은 css 안먹힌다고 알고있자...  -->
				<input class="button" type="submit" id="btnLogin" value="접	속">
			</div>
			<div class="sign_up">
				<span>회원가입</span>
			</div>
			<hr><br>
				<div class="container">
				<div class="twitter">
					<a href="#"><i class="fab fa-twitter"></i>트위터 계정으로 로그인</a>
				</div>
				<div class="facebook">
					<a href="#"><i class="fab fa-facebook-f"></i>페이스북 계정으로 로그인</a>
				</div>
				<div class="apple">	<a href="#"><i class="fab fa-apple"></i>애플 계정으로 로그인</a>
				</div>
				<div class="kakao">
					<a href="#"><img src="../../../user_images/kakao.png"
						width="25px">&nbsp&nbsp&nbsp&nbsp
						&nbsp&nbsp&nbsp&nbsp&nbsp카카오톡 계정으로 로그인</a>
				</div>
			</div>
		</form>
	</div>

	</body>
	
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	   
	<script type="text/javascript">
	$("#btnLogin").on("click", function() {
		$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/loginProc"
				,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = "/index/indexView";
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

	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</html>