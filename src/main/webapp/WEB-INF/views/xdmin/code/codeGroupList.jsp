<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<form id="" name="" method="get" action="/infra/code/codeGroupList">

<select name="shIfcgDelNy" id="shIfcgDelNy">
	<option value="">::삭제여부	
	<option value="1" <c:if test="${vo.shIfcgDelNy eq 1}">selected</c:if>>Y
	<option value="0" <c:if test="${vo.shIfcgDelNy eq 0}">selected</c:if>>N
</select>
	|| 
	회원이름 : <input type="text" name="shIfcgName" id="shIfcgName" value="<c:out value="${vo.shIfcgName}"/>">
	|| 언어별찾기 : 
	<select name="shOption" id="shOption"> <!-- 2022.03.15 shIfcgName -> shOption -->
	<option value="">::검색구분::	
	<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>한글
	<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>영문
	</select>
	<input type="text" name="shValue" id="shValue" value="<c:out value="${vo.shValue}"/>">
	<input type="submit" id="btnSubmit" name="search">
	<input type="submit" id="btnSubmit2" name="search">
		<br>
<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		   <c:out value=" ${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView?ifcgSeq=${item.ifcgSeq}"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgDelNy}"/><br>
			 <c:out value=" ${item.ifcgNameEng}"/> |
		</c:forEach>
	</c:otherwise>
</c:choose>	 
</form>

<nav aria-label="...">
  <ul class="pagination">
		  <c:if test="${vo.startPage gt vo.pageNumToShow}">
		                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.startPage - 1}">Previous</a></li>
		</c:if>
		<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
			<c:choose>
				<c:when test="${i.index eq vo.thisPage}">
		                <li class="page-item active"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
				</c:when>
				<c:otherwise>             
		                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${i.index}">${i.index}</a></li>
				</c:otherwise>
			</c:choose>
		</c:forEach>     
		<c:if test="${vo.endPage ne vo.totalPages}">                
		                <li class="page-item"><a class="page-link" href="/infra/code/codeGroupList?thisPage=${vo.endPage + 1}">Next</a></li>
		</c:if>  
		    
  </ul>
</nav>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>  <!-- Jquery방식 -->
<script src="../../../infra/resources/js/validation.js"></script>
<script type="text/javascript">
	$("#btnSubmit").on("click", function(){
	
		if(!checkNull($("#shIfcgName"),$("#shIfcgName").val(),"코드그룹이름을 입력해 주세요.")) return false;
		if(!checkNull($("#shValue"),$("#shValue").val(),"검색어를 입력해 주세요.")) return false;
	});
	
	$("#btnSubmit2").on("click", function(){
	
			alert("2번째 버튼입니다.")
			
		/* 
		checkNull($("#shIfcgDelNy"), $("#shIfcgDelNy").val(), "null 이다.");
		checkNull($("#shIfcgName"), $("#shIfcgName").val(), "null 이다.");
		checkNull($("#shOption"), $("#shOption").val(), "null 이다.");
		checkNull($("#shValue"), $("#shValue").val(), "null 이다.");
		 */
		/*		
		if($("#shIfcgName").val() == "" || $("#shIfcgName").val() == null ){
			alert("null 이다");
			$("#shIfcgName").focus();
		}
		if($("#shValue").val() == "" || $("#shValue").val() == null ){
			alert("null 이다");
			$("#shValue").focus();
		}
		*/
		
		
		/* alert($("#shOption").val()); */
/*
		alert($("#shIfcgDelNy").val() ); // jquery 방싟
		alert($("#shOption").val() ); // jquery 방싟
		alert($("#shValue").val() ); // jquery 방싟
		alert($("#shIfcgName").val() ); // jquery 방싟
*/	
		//	alert("javascript:" + document.getElementById("shIfcgName").value ); // javascript 방식
	});
	</script>