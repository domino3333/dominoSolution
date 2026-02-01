<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Domino Solution | Admin Page</title>

<style>
* {
	box-sizing: border-box;
	font-family: 'Segoe UI', 'Apple SD Gothic Neo', sans-serif;
}

body {
	margin: 0;
	padding: 0;
	min-height: 100vh;
	background: linear-gradient(135deg, #e3f2fd, #bbdefb);
	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 40px;
}

.header {
	text-align: center;
	margin-bottom: 30px;
}

.header h1 {
	margin: 0;
	font-size: 28px;
	color: #1976d2;
	letter-spacing: 1px;
}

.header span {
	font-size: 14px;
	color: #64b5f6;
}

.search-container {
	display: flex;
	align-items: center;
	margin-bottom: 20px;
}

.search-container select, .search-container input {
	padding: 10px;
	border-radius: 8px;
	border: 1px solid #cfd8dc;
	font-size: 14px;
	margin-right: 10px;
}

.search-container button {
	padding: 10px 20px;
	border-radius: 8px;
	border: none;
	background: #1976d2;
	color: #fff;
	font-weight: bold;
	cursor: pointer;
}

.search-container button:hover {
	background: #1565c0;
}

.table-container {
	width: 80%;
	background: #ffffff;
	border-radius: 12px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
	overflow-x: auto;
}

table {
	width: 100%;
	border-collapse: collapse;
}

thead {
	background: #1976d2;
	color: #fff;
}

th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #cfd8dc;
}

tr:hover {
	background-color: #f1f1f1;
}
</style>
</head>
<body>

	<div class="header">
		<h1>DOMINO Admin</h1>
		<span>회원 관리 페이지</span>
	</div>

	<!-- 검색 폼: 스프링 컨트롤러로 전송 -->
	<form action="/domino/admin/search" method="get"
		class="search-container">
		<select name="searchOption" id="searchOption">
			<option value="name">이름</option>
			<option value="age">나이</option>
		</select> <input type="text" name="keyword" id="keyword" placeholder="검색어 입력">
		<button type="submit">검색</button>
	</form>

	<div class="table-container">
		<table>
			<thead>
				<tr>
					<th>이름</th>
					<th>나이</th>
					<th>성별</th>
				</tr>
			</thead>
			<tbody>
				<%-- 실제 회원 리스트를 스프링 모델에서 받아와 반복 출력 --%>
				<c:forEach var="member" items="${memberList}">
					<tr>
						<td><a href="/domino/memberDetail/${member.no}"
							style="color: #1976d2; text-decoration: none;">
								${member.name} </a></td>
						<td>${member.age}</td>
						<td>${member.gender}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
