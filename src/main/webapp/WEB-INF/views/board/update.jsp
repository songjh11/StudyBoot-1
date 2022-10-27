<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<c:import url="../temp/boot.jsp"></c:import>
<c:import url="../temp/summer.jsp"></c:import>
<script defer src="/js/fileManager.js"></script>
<script defer src="/js/update.js"></script>
<body>
	
	<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-6">
		<h1>Board Update Page</h1>
		<form action="update" method="post" enctype="multipart/form-data">
			<input type="hidden" name="num" value="${update.num}">
			<div class="mb-3">
			  <label for="title" class="form-label">Title</label>
			  	<input type="text" name="title" class="form-control" id="title" value="${update.title}">
			</div>
			<div class="mb-3">
			  <label for="writer" class="form-label">Writer</label>
			  	<input type="text" name="writer" class="form-control" id="writer" value="${update.writer}">
			</div>
			<div class="mb-3">
			  <label for="contents" class="form-label">Contents</label>
			  <textarea class="form-control" name="contents" id="contents"></textarea>
			</div>

			<div class="mb-3" id="fileArea">
				<c:forEach items="${update.fileVOs}" var="file">
				<div>
					<p>${file.oriName}</p>
					<button type="button" class="fileDel" data-file-num="${file.fileNum}">X</button>
				</div>	
				</c:forEach>
			</div>
			<div class="mb-3">
				<button type="button" id="fileAdd">FileAdd</button>
			</div>
			
			<div>
				<button class="btn btn-danger">UPDATE</button>
			</div>
		</form>
		</div>
	</div>
	</div>
	
	<script type="text/javascript">
    $('#contents').summernote({
        tabsize: 4,
        height: 250
	   });

	$('#contents').summernote('code','${update.contents}');   
	</script>

</body>
</html>