<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:import url="../temp/boot.jsp"></c:import>
<c:import url="../temp/summer.jsp"></c:import>
<script defer src="/js/fileManager.js"></script>
<body>
	
	<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-6">
		<h1>Board Write Page</h1>
		<form:form modelAttribute="qnaVO" method="POST" enctype="multipart/form-data">
			<form action="add" method="post" enctype="multipart/form-data">
				<div class="mb-3">
				<form:input path="title" cssClass="form-control" id="title"/>
					<form:errors path="title"></form:errors>
					 	<div id="titleResult"></div>
				</div>
				<div class="mb-3">
				  <label for="writer" class="form-label">Writer</label>
				  <form:input path="writer" cssClass="form-control" id="writer"/>
					<form:errors path="writer"></form:errors>
					 	<div id="writerResult"></div>
				</div>
				<div class="mb-3">
				  <label for="contents" class="form-label">Contents</label>
				  <form:textarea path="contents" cssClass="form-control" id="contents"/>
					<form:errors path="contents"></form:errors>
					 	<div id="contentsResult"></div>
				</div>
				<div class="mb-3" id="fileArea">
				</div>
				<div class="mb-3">
					<button type="button" id="fileAdd">FileAdd</button>
				</div>
				
				<!-- <div class="mb-3">
				  <label for="contents" class="form-label">File</label>
				  <input type="file" name="files">
				</div>
				<div class="mb-3">
				  <label for="contents" class="form-label">File</label>
				  <input type="file" name="files">
				</div> -->
				
				<div>
					<button type="submit" class="btn btn-danger">WRITE</button>
				</div>
			</form>
		</form:form>
		</div>
	</div>
	</div>
	
	<script type="text/javascript">
    $('#contents').summernote({
        tabsize: 4,
        height: 250
      });
	</script>

</body>
</html>