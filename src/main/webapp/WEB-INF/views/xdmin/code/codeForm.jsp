<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<form method="post" action="/infra/code/codeInst">
<%-- <select class="form-select" name="ifcgSeq">
						<c:forEach items="${list}" var="item" varStatus="status">
							<option value="<c:out value="${item.ifcgSeq}"/>">
								<c:out value="${item.ifcgSeq}" /> |
								<c:out value="${item.ifcgName}" />
							</option>
						</c:forEach>
					</select>	 --%>					
	이름
	<input type="text" name="ifcdName" placeholder="이름"> <!-- 아이디 입력후 제출하겠다.-->
	델엔와이
	<input type="text" name="ifcdDelNy" placeholder="DelNy"> <!-- 아이디 입력후 제출하겠다.-->
	외래시퀀스	
	<input type="text" name="ifcgSeq" placeholder="seq"> <!-- 아이디 입력후 제출하겠다.-->
	<input type="submit" value="제출">
</form>
	