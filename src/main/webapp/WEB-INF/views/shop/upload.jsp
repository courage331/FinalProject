<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">

		<div class="py-5 text-center">
			<h2>게시판</h2>
		</div>

		<h3>파일이 업로드 되었습니다.</h3>
		<span>${file.originalFilename}</span> <span>${file.contentType}</span>
	</div>
</body>
</html>