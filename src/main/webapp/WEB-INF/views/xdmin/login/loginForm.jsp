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
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v10.0&appId=3235765853336354" nonce="SiOBIhLG"></script>

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
				<div class="facebook" >
					<!-- <a href="javascript:void(0)"><i class="fab fa-facebook-f"></i>페이스북 계정으로 로그인</a> -->
						<div class="fb-login-button"  data-width="" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false"></div>
						<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>

				<div id="status">
				</div>
						
				</div>
				<div class="apple">	<a href="#"><i class="fab fa-apple"></i>애플 계정으로 로그인</a>
				</div>
				<div class="kakao">
					<a href="javascript:KakaoLogin();"><img src="/resources/user/image/smallkakao.png" width="25px">&nbsp&nbsp&nbsp&nbsp&nbsp카카오 계정으로 로그인</a>
				</div>
			</div>
		</form>
	</div>
	


<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v13.0&appId=3235765853336354&autoLogAppEvents=1" nonce="fq1er24p"></script>

	<script href="../_bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script> 
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
	<script src="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.js"></script> 
	<script src="../../../../resources/xdmin/js/validation.js"></script>  
	<link href="/resources/common/jquery/jquery-ui-1.13.1.custom/jquery-ui.css" rel="stylesheet"/> 
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0729e498fb15ebd0272704ad5ebba933&libraries=services"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>


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

	
	<script>
			Kakao.init('0729e498fb15ebd0272704ad5ebba933');
				console.log(Kakao.isInitialized());   // 웹화면상에서 제대로 초기화가 되었는지 콘솔에서 확인할 수 있습니다.
			
			KakaoLogin = function(){
				Kakao.Auth.login({  // Kakao.Auth.loginForm도 사용가능 (login은 카카오 로그인 세션이 존재하는 경우 로그인 팝업을 띄우지 않음)
						 success : function(authObj) {
							 console.log(authObj);
							 
							 Kakao.API.request({
								 url:'/v2/user/me',
								 success: function(res){
									 console.log(res);
								 }
							 })
						 }
					 })
			}
		</script>
		<script>

		  function statusChangeCallback(response) {  // Called with the results from FB.getLoginStatus().
		    console.log('statusChangeCallback');
		    console.log(response);                   // The current login status of the person.
		    if (response.status === 'connected') {   // Logged into your webpage and Facebook.
		      testAPI();  
		    } else {                                 // Not logged into your webpage or we are unable to tell.
		      document.getElementById('status').innerHTML = 'Please log ' +
		        'into this webpage.';
		    }
		  }
		
		
		  function checkLoginState() {               // Called when a person is finished with the Login Button.
		    FB.getLoginStatus(function(response) {   // See the onlogin handler
		      statusChangeCallback(response);
		    });
		  }
		
		
		  window.fbAsyncInit = function() {
		    FB.init({
		      appId      : '3235765853336354',    // app_Id 입력
		      cookie     : true,                     // Enable cookies to allow the server to access the session.
		      xfbml      : true,                     // Parse social plugins on this webpage.
		      version    : 'v13.0'           // Use this Graph API version for this call.
		    });
		
		
		    FB.getLoginStatus(function(response) {   // Called after the JS SDK has been initialized.
		      statusChangeCallback(response);        // Returns the login status.
		    });
		  };
		 
		  function testAPI() {                      // Testing Graph API after login.  See statusChangeCallback() for when this call is made.
		    console.log('Welcome!  Fetching your information.... ');
		    FB.api('/me', function(response) {
		      console.log('Successful login for: ' + response.name);
		      document.getElementById('status').innerHTML =
		        'Thanks for logging in, ' + response.name + '!';
		    });
		  }
		
		</script>
	
	</body>
</html>