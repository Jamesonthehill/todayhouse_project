<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeGroupUpdt">
	<input type="hidden" name="ifcgSeq" value=<c:out value="${rt.ifcgSeq}"/>> <!-- 아이디 입력후 제출하겠다.-->
	<input type="text" name="ifcgName" placeholder="아이디" value=<c:out value="${rt.ifcgName}"/>> <!-- 아이디 입력후 제출하겠다.-->
	<input type="submit" value="제출">
</form>
	