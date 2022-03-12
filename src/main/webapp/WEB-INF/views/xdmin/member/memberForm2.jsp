<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/member/memberUpdt">
	<input type="hidden" name="ifmmSeq" value=<c:out value="${rt.ifmmSeq}"/>> <!-- 아이디 입력후 제출하겠다.-->
	<input type="text" name="ifmmId" placeholder="아이디" value=<c:out value="${rt.ifmmId}"/>> <!-- 아이디 입력후 제출하겠다.-->
	<input type="text" name="ifmmName" placeholder="아이디" value=<c:out value="${rt.ifmmName}"/>> <!-- 아이디 입력후 제출하겠다.-->
	<input type="submit" value="제출">
</form>
	