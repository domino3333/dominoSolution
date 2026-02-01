<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Domino Solution | Member Edit</title>
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

.edit-container {
	width: 500px;
	background: #ffffff;
	border-radius: 12px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
	padding: 30px;
}

.edit-container h2 {
	margin-top: 0;
	color: #1976d2;
	font-size: 22px;
	margin-bottom: 20px;
}

.edit-row {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-bottom: 12px;
}

.edit-label {
	font-weight: bold;
	color: #555;
	width: 120px;
}

.edit-input {
	width: 300px;
	padding: 8px 10px;
	border-radius: 8px;
	border: 1px solid #cfd8dc;
	font-size: 14px;
}

.button-container {
	margin-top: 20px;
	display: flex;
	flex-direction: column;
}

.button-container button, .button-container input[type="reset"] {
	width: 100%;
	padding: 12px;
	margin-bottom: 10px;
	border: none;
	border-radius: 8px;
	font-weight: bold;
	font-size: 15px;
	cursor: pointer;
}

.button-container button {
	background-color: #1976d2;
	color: #fff;
}

.button-container button:hover {
	background-color: #1565c0;
}

.button-container input[type="reset"] {
	background-color: #e0e0e0;
	color: #555;
}

.button-container input[type="reset"]:hover {
	background-color: #bdbdbd;
}

.auth-btn {
	display: inline-flex;
	align-items: center;
	background: #1976d2;
	color: #fff;
	border: none;
	border-radius: 8px;
	padding: 6px 10px;
	margin: 4px;
	cursor: pointer;
	font-weight: bold;
	position: relative;
}

.auth-btn .delete-x {
	display: none;
	margin-left: 6px;
	font-weight: bold;
	color: #ff5252;
}

.auth-btn:hover .delete-x {
	display: inline;
}
</style>
</head>
<body>

	<div class="header">
		<h1>DOMINO Member Edit</h1>
		<span>회원 정보 수정</span>
	</div>

	<div class="edit-container">
		<h2>회원 정보 수정</h2>

		<!-- 회원 정보 수정 form -->
		<form action="/domino/memberUpdate/${member.no}" method="post">
			<div class="edit-row">
				<span class="edit-label">번호:</span> <input type="text"
					class="edit-input" name="no" value="${member.no}" readonly>
			</div>
			<div class="edit-row">
				<span class="edit-label">아이디:</span> <input type="text"
					class="edit-input" name="id" value="${member.id}">
			</div>
			<div class="edit-row">
				<span class="edit-label">이름:</span> <input type="text"
					class="edit-input" name="name" value="${member.name}">
			</div>
			<div class="edit-row">
				<span class="edit-label">나이:</span> <input type="text"
					class="edit-input" name="age" value="${member.age}">
			</div>
			<div class="edit-row">
				<span class="edit-label">생일:</span> <input type="text"
					class="edit-input" name="birthday" value="${member.birthday}">
			</div>
			<div class="edit-row">
				<span class="edit-label">성별:</span> <input type="text"
					class="edit-input" name="gender" value="${member.gender}">
			</div>
			<h2>권한</h2>
			<div>
				<c:forEach var="auth" items="${member.memberAuthList}">
					<button type="button" class="auth-btn">${auth.auth}</button>
				</c:forEach>
			</div>

			<div class="button-container">
				<button type="submit">완료</button>
				<input type="reset" value="초기화">
			</div>
		</form>

	</div>

</body>
</html>
