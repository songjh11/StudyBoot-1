<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<link href="/css/test.css" rel="stylesheet">
</head>

<body>
<form action="add" method="post">
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">ID</label>
	  <input type="text" class="form-control" name="id" id="exampleFormControlInput1" placeholder="ID">
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">PASSWORD</label>
	  <input type="text" class="form-control" name="pw" id="exampleFormControlInput1" placeholder="PASSWORD">
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">NAME</label>
	  <input type="text" class="form-control" name="name" id="exampleFormControlInput1" placeholder="NAME">
	</div>
	<div class="mb-3">
	  <label for="exampleFormControlInput1" class="form-label">Email address</label>
	  <input type="text" class="form-control" name="email" id="exampleFormControlInput1" placeholder="name@example.com">
	</div>
	<button type="submit" class="btn btn-info">Join</button>
</form>


</body>
</html>