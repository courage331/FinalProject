<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 정보 보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- 닉네임, 포인트, 회원정보, 로그아웃 창 -->
	<!-- TODO -->
	<!-- 회원 정보, 작성 글, 작성 댓글 등 탭 -->
	<ul class="nav nav-tabs">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab"
			href="#info">회원 정보</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#asd">작성 글</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#zxc">작성 댓글</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#zxc">스크랩 한 글 보기</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab"
			href="#zxc">로그인 기록보기</a></li>
	</ul>
	<!-- 정보, 작성 글, 작성 댓글 등이 나올 테이블 -->
	<div class="tab-content">
		<div class="tab-pane fade show active" id="info">
			<div class="container">
				<div class="table-responsive-md">
					<table class="table">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>날짜</th>
								<th>조회수</th>
								<th>추천수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>uid ?
								<td>제 목</td>
								<td>날짜</td>
								<td>조회수</td>
								<td>추천수</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="tab-pane fade" id="asd">
		<c:choose>
			<c:when test="${ empty list || fn:length(list) == 0}">
			<%-- 리스트가 비어 있거나 없으면 --%>
			</c:when>
			<c:otherwise>
				<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.uid }</td>
					<td>${dto.name }</td>
					<td>${dto.viewCnt }</td>
					<td>${dto.regDate }</td>
				</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>			
		</div>
		<div class="tab-pane fade" id="zxc">
			<p>Curabitur dignissim quis nunc vitae laoreet. Etiam ut mattis
				leo, vel fermentum tellus. Sed sagittis rhoncus venenatis. Quisque
				commodo consectetur faucibus. Aenean eget ultricies justo.</p>
		</div>
	</div>



	<!-- 실시간 채팅 관련 -->
	<!-- TODO -->




</body>
</html>