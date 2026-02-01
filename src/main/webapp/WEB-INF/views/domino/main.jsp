<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Domino Solution | Login</title>

<style>
* {
	box-sizing: border-box;
	font-family: 'Segoe UI', 'Apple SD Gothic Neo', sans-serif;
}

body {
	margin: 0;
	height: 100vh;
	background: linear-gradient(135deg, #e3f2fd, #bbdefb);
	display: flex;
	justify-content: center;
	align-items: center;
}

.login-container {
	background: #ffffff;
	width: 380px;
	padding: 40px;
	border-radius: 14px;
	box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
}

.logo {
	text-align: center;
	margin-bottom: 30px;
}

.logo h1 {
	margin: 0;
	font-size: 26px;
	color: #1976d2;
	letter-spacing: 1px;
}

.logo span {
	font-size: 13px;
	color: #64b5f6;
}

.form-group {
	margin-bottom: 18px;
}

.form-group label {
	display: block;
	font-size: 13px;
	margin-bottom: 6px;
	color: #555;
}

.form-group input {
	width: 100%;
	padding: 12px;
	border-radius: 8px;
	border: 1px solid #cfd8dc;
	font-size: 14px;
}

.form-group input:focus {
	outline: none;
	border-color: #64b5f6;
	box-shadow: 0 0 0 2px rgba(100, 181, 246, 0.2);
}

.login-btn {
	width: 100%;
	padding: 13px;
	border: none;
	border-radius: 8px;
	background: #1976d2;
	color: #fff;
	font-size: 15px;
	font-weight: bold;
	cursor: pointer;
	margin-top: 10px;
}

.login-btn:hover {
	background: #1565c0;
}

.footer {
	text-align: center;
	margin-top: 25px;
	font-size: 12px;
	color: #90a4ae;
}
</style>
</head>
<body>

	<div class="login-container">
		<div class="logo">
			<h1>DOMINO</h1>
			<span>Solution Login System</span>
		</div>

		<form action="/domino/login" method="post">
			<div class="form-group">
				<label for="userId">아이디</label> <input type="text" id="id"
					name="id" placeholder="아이디를 입력하세요" required>
			</div>

			<div class="form-group">
				<label for="password">비밀번호</label> <input type="password"
					id="pw" name="pw" placeholder="비밀번호를 입력하세요" required>
			</div>

			<button type="submit" class="login-btn">로그인</button>
		</form>
		<form action="/domino/signUpForm" method="get" style="margin-top: 12px;">
			<button type="submit" class="login-btn" style="background: #64b5f6;">회원가입</button>
		</form>

		<div class="footer">© 2026 Domino Solution. All rights reserved.
		</div>
	</div>

</body>
</html>
