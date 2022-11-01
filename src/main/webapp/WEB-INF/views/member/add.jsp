<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<c:import url="../temp/boot.jsp"></c:import>
<script defer src="/js/util.js"></script>
<script defer src="/js/memberAdd.js"></script>
</head>

<body>
<div class="mt-5">
<form:form modelAttribute="memberVO" method="post">
<form action="add" method="post" id="joinFrm">
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">ID</label>
	  <form:input path="id" cssClass="form-control" id="id"/>
	  <form:errors path="id"></form:errors>
	  <div id="inputIdResult"></div>
	</div>
	<div>
		<button type="button" id="idCheckBtn" class="btn btn-info">ID 중복 Check</button>
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">PASSWORD</label>
	  <form:password path="pw" cssClass="form-control" id="pw"/>
	  <form:errors path="pw"></form:errors>
	  <div id="inputPwResult"></div>
	</div>
	<div class="mb-3">
		<label for="exampleFormControlInput1" class="form-label">PASSWORD 확인</label>
		<form:password path="pw2" cssClass="form-control" id="pw2"/>
		<form:errors path="pw2"></form:errors>
		<div id="inputPw2Result"></div>
	  </div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">NAME</label>
	  <form:input path="name" cssClass="form-control" id="name"/>
	  <div id="inputNameResult">
	  	<form:errors path="name"></form:errors>
	  </div>
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">Email address</label>
	   <form:input path="email" cssClass="form-control" id="email"/>
	   <form:errors path="email"></form:errors>
	   <div id="inputEmailResult"></div>
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">Age</label>
	   <form:input path="age" cssClass="form-control" id="age"/>
	   <form:errors path="age"></form:errors>
	   <div id="inputAgeResult"></div>
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">Birth</label>
	   <form:input path="birth" cssClass="form-control" id="birth"/>
	   <form:errors path="birth"></form:errors>
	   <div id="inputBirthResult"></div>
	</div>
	<div>
		<button type="submit" id="joinBtn" class="btn btn-info">Join</button>
	</div>
</form>
</form:form>
</div>

<!-- post button -->
<div>
	<button type="button" id="test" class="btn btn-info">Post Test</button>
	<button type="button" id="test2" class="btn btn-info">Ajax Get Test</button>
	<button type="button" id="test3" class="btn btn-info">Ajax Post Test</button>
</div>

<!-- 약관 test -->
<div>
	<div>
		ALL <input type="checkbox" id="all">
	</div>	
	<div>
		동의1 <input type="checkbox" class="check" name="" id="">
			<div>
				약관1
			</div>
	</div>
	<div>
		동의2 <input type="checkbox" class="check" name="" id="">
			<div>
				약관2
			</div>
	</div>
	<div>
		동의3 <input type="checkbox" class="check" name="" id="">
			<div>
				약관3
			</div>
	</div>
</div>

<div>
	<select id="s1">
		<option>1</option>
		<option>2</option>
	</select>
	<button type="button" id="s1Add">Add</button>
</div>

</body>
</html>