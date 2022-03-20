<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
	
			
<%-- <c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		<c:out value=" ${item.ifmmSeq}"/> | <a href="/member/memberView?ifmmSeq=${item.ifmmSeq}"><c:out value="${item.ifmmId}"/></a> | <c:out value="${item.ifmmName}"/> <br>
		</c:forEach>
	</c:otherwise>
</c:choose>	  --%>


<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../../../resources/user/css/memberList.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/b322818db5.js" crossorigin="anonymous"></script>
   
    <title>인테리어 플랫폼 오늘의 집</title>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid" style="background-color:  #00bfff;">
    <a class="navbar-brand" href="../deltaMain.html"><image src="../../../../resources/xdmin/image/hoem.png" width="100px" height="50px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       	<li class="nav-item dropdown fff" > <!-- 눌럿을때 옵션이 바로 아래 떨어지게함 -->
          <a class="nav-link dropdown-toggle" style="width: 120px" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <i class="fas fa-cog"></i> 환경설정
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown" ><!--  옵션 숨기기 버튼이라고 보면될듯, 이게없으면 옵션이 다 보임 -->
            <li><a class="dropdown-item"  href="#">회원목록</a></li>
            <li><a class="dropdown-item" href="#">회원추가</a></li>
            <li><hr class="dropdown-divider"></li> <!-- 섹션 나누는것을말함  -->
            <li><a class="dropdown-item" href="#">마일리지 </a></li>
          </ul>
        </li>
          
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           <i class="fas fa-users" style="padding-right:5px"></i>회원관리
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
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">웹사이트유지보수</a></li>
            <li><a class="dropdown-item" href="#">유저인터페이스</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">매니저인터페이스</a></li>
          </ul>
        </li>
      <form class="d-flex">
        <input class="form-control me-2" styletype="search" placeholder="통합 검색" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">search</button>
      </form>
    </div>
  </div>
</nav>


</head>
<body>
<p style="float: left;">&nbsp&nbsp홈 > 회원관리</p>
<br><br>
<h1>회원관리</h1>
		<form id="" name="" method="get" action="/member/memberList">
			<div class="row border m-2"> <!--  검색하는 영역을 네모난 통으로 씌워주는 것 -->
				<div class="row mb-2"><!-- sm-2 반응형, p-1~10 박스크기, pt-위쪽,왼쪽으로부터)얼마나 띄워쓸것인지 위치 -->
					<div class="col-sm-2 p-2 pb-3">
						<select class="form-select" name="shJoinOption">
							<option value="">::날짜::</option>
							<option value="5" <c:if test="${vo.shJoinOption eq 5}">selected</c:if>>시작날짜</option>
							<option>끝날짜</option>
						</select>
					</div>
					<div class="col-sm-2 p-2 pb-3">
						<input class="form-control" type="text" name="shJoinValue" value="<c:out value="${vo.shJoinValue}"/>" placeholder="시작일">
					</div> 
					<div class="col-sm-2 p-2 pb-3">
						<input class="form-control" type="text"  placeholder="종료일">
					</div>
					</div>
				<div class="row mb-2">
					<div class="col-sm-2 p-2 pb-3">
						<select class="form-select" name="shOption">
							<option value="">::검색구분::</option>
							<option Value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>이름</option>
							<option Value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>아이디</option>
							<option Value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>연락처</option>
							<option Value="4" <c:if test="${vo.shOption eq 4}">selected</c:if>>이메일</option>
						</select>
					</div>
						<div class="col-sm-2 p-2 pb-3">
						<input class="form-control" type="text" name="shValue" value="<c:out value="${vo.shValue}"/>" placeholder="검색어" >
						</div>
					</div>
						<button class="btn btn-warning my-2 aaa" type="submit" name="search" onclick="/memberList.jsp">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search"
								viewBox="0 0 16 16">
								<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
							</svg>
						</button>
						<button class="btn btn-danger my-2 aaa" onclick="/memberList.jsp">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-clockwise"
								viewBox="0 0 16 16">
								<path fill-rule="evenodd" d="M8 3a5 5 0 1 0 4.546 2.914.5.5 0 0 1 .908-.417A6 6 0 1 1 8 2v1z" />
								<path d="M8 4.466V.534a.25.25 0 0 1 .41-.192l2.36 1.966c.12.1.12.284 0 .384L8.41 4.658A.25.25 0 0 1 8 4.466z" />
							</svg>
						</button>
					</div>
					</form>
							<form id="" name="" action="/member/memberForm">
						<button class="btn btn-success my-2 bbb" >
							<i class="fas fa-file-excel"></i>
						</button>
					 	<button class="btn btn-primary my-2 bbb" onclick="memberForm.jsp">
							<i class="fas fa-user-plus"></i>
						</button>
			</form>
	<div class="aaa">
		<p>총회원수: 120</p>
	</div>
<table class="table table-hover" >
  <thead>
    <tr>
      <th scope="col" style="background-color:  #00bfff;" style="color: white;">no</th>
      <th scope="col" style="background-color:  #00bfff;" style="color: white;"><input type="checkbox" name="checkbox1" onclick="selectAll(this)"> 전체선택
      <th scope="col" style="background-color:  #00bfff;" style="color: white;">이름</th>
      <th scope="col" style="background-color:  #00bfff;" style="font-family: white;">아이디</th>
      <th scope="col" style="background-color:  #00bfff;" style="font-family: white;">연락처</th>
      <th scope="col" style="background-color:  #00bfff;" style="font-family: white;">이메일</th>
      <th scope="col" style="background-color:  #00bfff;" style="font-family: white;">방문수</th>
      <th scope="col" style="background-color:  #00bfff;" style="font-family: white;">가입</th>
      <th scope="col" style="background-color:  #00bfff;" style="font-family: white;">기능</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list}" var="item" varStatus="status">	
    <tr>
      <th scope="row"><c:out value=" ${item.ifmmSeq}"/></th>
      <td><input type="checkbox" name="checkbox1"></td>
      <td><c:out value=" ${item.ifmmName}"/></td> 
      <td><c:out value=" ${item.ifmmId}"/></td> <!-- 아이디 -->
      <td><c:out value=" ${item.ifmpNumber}"/></td> <!-- 연락처  -->
      <td><c:out value=" ${item.ifmeEmailFull}"/></td>
      <td>5</td>
      <td><c:out value=" ${item.regDateTime}"/></td>
      <td><a href="#">상세보기</a></td>
    </tr>
    </c:forEach>
  </tbody>
</table>
	<div class="aaa">
		<button class="btn  btn-danger my-2">	
			<i class="fas fa-trash-alt"></i>
		</button>
	</div>	
	<br>	
	<div class="alert alert-danger" role="alert" style="width: 1280px; margin: auto;">*회원자료 삭제시 다른 회원이 회원아이디를 사용하지 못하도록 회원아이디, 이름은 삭제하지 않고 영구 보관합니다.</div>
	<br>
	<form id="" name="" method="get" action="/member/memberList">
	<div>
		<nav aria-label="Page navigation example">
		  <div class="ddd">
		  <ul class="pagination pagination-sm ">
			    <c:if test="${vo.startPage gt vo.pageNumToShow}">
			    	<!-- <li class="page-item"><a class="page-link" href="#"><<</a></li> -->
				    <li class="page-item"><a class="page-link" href="/member/memberList?thisPage=${vo.startPage - 1}">Previous</a></li>
			    </c:if>
		    	<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
					<c:choose>
			    		<c:when test="${i.index eq vo.thisPage}">
				    			<li class="page-item active"><a class="page-link" href="/member/memberList?thisPage=${i.index}">${i.index}</a></li>
						</c:when>
					<c:otherwise>     
					   			 <li class="page-item"><a class="page-link" href="/member/memberList?thisPage=${i.index}">${i.index}</a></li>
					</c:otherwise>
	    		</c:choose>
    		</c:forEach>
    		<c:if test="${vo.endPage ne vo.totalPages}">        
					    <li class="page-item"><a class="page-link" href="/member/memberList?thisPage=${vo.endPage + 1}">Next</a></li>
		    </c:if>
		  </ul>
		  </div>
		</nav>	
	</div>		
		</form>	
			
<!--  
	<div class="ddd">  
  		<ul class="pagination ddd ">
  	<a class="page-link" href="#">Previous</a>
 	<a class="page-link" href="#">1</a>
    <a class="page-link" href="#">2</a>
    <a class="page-link" href="#">3</a>
    <a class="page-link" href="#">Next</a>
  		</ul>
</div>	 -->

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

  
  </body>
</html> 
