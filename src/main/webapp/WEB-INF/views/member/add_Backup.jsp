<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
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
<form action="add" method="post" id="joinFrm">
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">ID</label>
	  <input type="text" class="form-control" name="id" id="id" placeholder="ID 입력">
	  <label for="exampleFormControlInput1" class="form-label" id="inputIdResult"></label>
	</div>
	<div>
		<a ><button type="button" id="idCheckBtn" class="btn btn-info">ID 중복 Check</button>
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">PASSWORD</label>
	  <input type="text" class="form-control" name="pw" id="pw" placeholder="PASSWORD 입력">
	  <label for="exampleFormControlInput1" class="form-label" id="inputPwResult"></label>
	</div>
	<div class="mb-3">
		<label for="exampleFormControlInput1" class="form-label">PASSWORD 확인</label>
		<input type="text" class="form-control" name="pw2" id="pw2" placeholder="PASSWORD 한번 더 입력">
		<label for="exampleFormControlInput1" class="form-label" id="inputPw2Result"></label>
	  </div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">NAME</label>
	  <input type="text" class="form-control" name="name" id="name" placeholder="NAME 입력">
	  <label for="exampleFormControlInput1" class="form-label" id="inputNameResult"></label>
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">Email address</label>
	  <input type="text" class="form-control" name="email" id="email" placeholder="name@example.com">
	  <label for="exampleFormControlInput1" class="form-label" id="inputEmailResult"></label>
	</div>
	<button type="button" id="joinBtn" class="btn btn-info">Join</button>
</form>
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