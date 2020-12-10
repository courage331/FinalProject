<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>shop</h1>

	<!-- 관리자로 들어올 경우 보이게  -->
	<h1>파일 업로드</h1>
	<form method="post" action="upload" enctype="multipart/form-data">
		<label>파일:</label> <input multiple="multiple" type="file" name="file1">
		<input type="submit" value="upload">
	</form>
</body>
</html>











