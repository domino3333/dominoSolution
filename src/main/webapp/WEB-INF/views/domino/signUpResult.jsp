<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Domino Solution | 회원가입 완료</title>

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

        .result-container {
            background: #ffffff;
            width: 400px;
            padding: 40px;
            border-radius: 14px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
            text-align: center;
        }

        .result-container h1 {
            font-size: 24px;
            color: #1976d2;
            margin-bottom: 20px;
        }

        .result-container p {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
        }

        .home-btn {
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            background: #1976d2;
            color: #fff;
            font-size: 15px;
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
        }

        .home-btn:hover {
            background: #1565c0;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 12px;
            color: #90a4ae;
        }
    </style>
</head>
<body>

<div class="result-container">
    <h1>${member.name}님 회원가입 완료!</h1>


    <a href="/domino/main" class="home-btn">로그인 화면으로 이동</a>

    <div class="footer">
        © 2026 Domino Solution. All rights reserved.
    </div>
</div>

</body>
</html>
