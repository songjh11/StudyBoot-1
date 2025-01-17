<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="./temp/boot.jsp"></c:import>
<link href="/css/test.css" rel="stylesheet">
<script defer src="/js/test.js"></script>

</head>
<body>
	<h1>Index page</h1>
	<h1><spring:message code="hi" var="h"></spring:message></h1>
	<h1><spring:message code="test" text="code가 없을때 출력하는 메세지"></spring:message></h1>
	<h1>${h}</h1>
	<h1>${h}</h1>
	<h1>${h}</h1>
<div>
	<button id="btn">CLICK</button>
</div>
<div>
	<button class="buttons">BTN1</button>
	<button class="buttons">BTN2</button>
	<button class="buttons">BTN3</button>
</div>

		<div>
			<c:choose>
				<c:when test="${not empty member}">
				<h1><spring:message code="welcome" arguments="${member.name}"></spring:message></h1>
				<h1><spring:message code="welcome2" arguments="${member.id},${member.name}" argumentSeparator=","></spring:message></h1>
					<p>${member.name} 님 환영합니다</p>
					<p>${member.roleVOs[0].roleName}등급입니다</p>
					<a href="./member/logout"><button type="button" class="btn btn-info">Logout</button></a>
				</c:when>
				<c:when test="${empty member}">
					<div>
						<h3><a href="./member/add">Join</a></h3>
						<h3><a href="./member/login">Login</a></h3>
					</div>
				</c:when>
			</c:choose>
		</div>
	<img src="./images/winter.jpg" id="id1">
	<a href="./qna/list">QNA</a>
	<div>
		<img alt="" src="/file/qna/01d3f9ce-a02e-49b7-b762-20c4423c41e1_puppy (2).jpg">
		<img alt="" src="/file/notice/ced8f9dd-84f2-4abe-a29f-d9bfdf94a40a_아코_고양이와_선반_PC.png">
		<a href="/fileDown/qna?fileNum=2">QnaDown</a>
		<a href="/fileDown/notice?fileNum=2">NoticeDown</a>
	</div>

</body>
</html>