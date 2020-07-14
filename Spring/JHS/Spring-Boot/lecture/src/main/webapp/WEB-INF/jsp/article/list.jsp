<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CUNI - 게시물 리스트</title>
<style>
.con {
	width: 1000px;
	margin: 0 auto;
}
.article-list-box>table {
	width: 100%;
	border-collapse: collapse;;
}
.article-list-box>table th, .article-list-box>table td {
	border: 1px solid black;
	padding: 20px;
}
</style>
</head>
<body>
	<h1>게시물 리스트</h1>

	<div class="con menu-box">
		<a href="/article/list">글 리스트</a> <a href="/article/write">글쓰기</a>
	</div>

	<div class="con article-list-box">
		<table>
			<colgroup>
				<col width="10" />
				<col width="200" />
				<col />
				<col width="150" />
			</colgroup>
			<thead>
				<tr>
					<th>ID</th>
					<th>날짜</th>
					<th>제목</th>
					<th>비고</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${articles}" var="article">
					<tr>
						<td>${article.id}</td>
						<td>${article.regDate}</td>
						<td><a href="./detail?id=${article.id}">${article.title}</a></td>
						<td><a href="./modify?id=${article.id}">수정하기</a> <a
							href="./doDelete?id=${article.id}"
							onclick="if ( confirm('정말로 삭제하시겠습니까?') == false ) return false;">삭제</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>