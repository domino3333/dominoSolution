<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Domino Solution | Member Detail</title>
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

.detail-container {
    width: 500px;
    background: #ffffff;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0,0,0,0.12);
    padding: 30px;
}

.detail-container h2 {
    margin-top: 0;
    color: #1976d2;
    font-size: 22px;
    margin-bottom: 20px;
}

.detail-row {
    display: flex;
    justify-content: space-between;
    margin-bottom: 12px;
}

.detail-label {
    font-weight: bold;
    color: #555;
}

.auth-list {
    margin-top: 20px;
}

.auth-list ul {
    list-style: none;
    padding-left: 0;
}

.auth-list li {
    background: #e3f2fd;
    padding: 6px 12px;
    margin-bottom: 6px;
    border-radius: 6px;
    color: #1976d2;
    font-weight: bold;
}
</style>
</head>
<body>

<div class="header">
    <h1>DOMINO Member Detail</h1>
    <span>회원 상세 정보</span>
</div>

<div class="detail-container">
    <h2>기본 정보</h2>
    <div class="detail-row">
        <span class="detail-label">번호:</span>
        <span>${member.no}</span>
    </div>
    <div class="detail-row">
        <span class="detail-label">아이디:</span>
        <span>${member.id}</span>
    </div>
    <div class="detail-row">
        <span class="detail-label">이름:</span>
        <span>${member.name}</span>
    </div>
    <div class="detail-row">
        <span class="detail-label">나이:</span>
        <span>${member.age}</span>
    </div>
    <div class="detail-row">
        <span class="detail-label">생일:</span>
        <span>${member.birthday}</span>
    </div>
    <div class="detail-row">
        <span class="detail-label">성별:</span>
        <span>${member.gender}</span>
    </div>

    <div class="auth-list">
        <h2>권한 정보</h2>
        <ul>
            <c:forEach var="auth" items="${member.memberAuthList}">
                <li>${auth.auth}</li>
            </c:forEach>
        </ul>
    </div>
    <div style="margin-top: 20px;">
        <form action="/domino/memberEdit/${member.no}" method="get">
            <button type="submit" style="width:100%; padding:12px; margin-bottom:10px; border:none; border-radius:8px; background:#1976d2; color:#fff; font-weight:bold; cursor:pointer;">
                수정
            </button>
        </form>

        <form action="/domino/memberDelete/${member.no}" method="post">
            <button type="submit" style="width:100%; padding:12px; margin-bottom:10px; border:none; border-radius:8px; background:#e53935; color:#fff; font-weight:bold; cursor:pointer;">
                삭제
            </button>
        </form>

        <a href="/domino/adminPage" style="display:block; width:100%; text-align:center; padding:12px; border-radius:8px; background:#64b5f6; color:#fff; font-weight:bold; text-decoration:none;">
            메인으로 돌아가기
        </a>
    </div>
</div>

</body>
</html>
