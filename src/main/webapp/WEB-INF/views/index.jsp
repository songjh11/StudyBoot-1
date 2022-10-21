<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="./temp/boot.jsp"></c:import>
<link href="/css/test.css" rel="stylesheet">

</head>
<body>
	<h1>Index page</h1>
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