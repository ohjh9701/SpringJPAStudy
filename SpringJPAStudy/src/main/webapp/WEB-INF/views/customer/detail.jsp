<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환자 상세 기록 | MEDICAL SHOP</title>
<style>
body {
	background-color: #f4f7f9;
	color: #333;
	font-family: 'Pretendard', sans-serif;
	margin: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.detail-container {
	background: #ffffff;
	width: 100%;
	max-width: 550px;
	padding: 50px;
	border-radius: 20px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.05);
	border-top: 8px solid #0077b6;
}

.header {
	text-align: center;
	margin-bottom: 40px;
	padding-bottom: 20px;
	border-bottom: 2px solid #f0f4f7;
}

.header h2 {
	color: #0077b6;
	font-size: 26px;
	margin: 0;
}

.header p {
	color: #888;
	font-size: 14px;
	margin-top: 8px;
}

/* 상세 정보 테이블 스타일 */
.info-table {
	width: 100%;
	margin-bottom: 40px;
}

.info-row {
	display: flex;
	padding: 18px 10px;
	border-bottom: 1px solid #f0f4f7;
}

.info-row:last-child {
	border-bottom: none;
}

.info-label {
	width: 130px;
	font-weight: 700;
	color: #0077b6;
	font-size: 15px;
}

.info-value {
	flex: 1;
	color: #151515;
	font-size: 16px;
}

/* 하단 버튼 그룹 */
.btn-group {
	display: flex;
	gap: 12px;
	justify-content: center;
}

.btn {
	flex: 1;
	padding: 14px;
	border-radius: 8px;
	font-weight: bold;
	text-align: center;
	text-decoration: none;
	font-size: 14px;
	transition: all 0.3s ease;
	border: none;
	cursor: pointer;
}

/* 수정 버튼 (메인 컬러) */
.btn-edit {
	background-color: #0077b6;
	color: white;
}

.btn-edit:hover {
	background-color: #005f8d;
	transform: translateY(-2px);
}

/* 탈퇴 버튼 (경고 느낌의 서브 컬러) */
.btn-withdraw {
	background-color: #f8fbff;
	color: #e63946;
	border: 1px solid #ffccd5;
}

.btn-withdraw:hover {
	background-color: #fff0f3;
	transform: translateY(-2px);
}

/* 목록으로 버튼 (무채색) */
.btn-list {
	background-color: #f1f3f5;
	color: #666;
}

.btn-list:hover {
	background-color: #e9ecef;
	color: #333;
}
</style>

</head>
<body>

	<div class="detail-container">
		<div class="header">
			<h2>
				환자 상세 정보 <span>Chart Detail</span>
			</h2>
			<p>기록 번호 #${customer.no}에 대한 상세 정보입니다.</p>
		</div>

		<div class="info-table">
			<div class="info-row">
				<div class="info-label">고유 번호</div>
				<div class="info-value">${customer.no}</div>
			</div>
			<div class="info-row">
				<div class="info-label">환자 아이디</div>
				<div class="info-value">${customer.id}</div>
			</div>
			<div class="info-row">
				<div class="info-label">환자 성함</div>
				<div class="info-value">${customer.name}</div>
			</div>
			<div class="info-row">
				<div class="info-label">연락처</div>
				<div class="info-value">${customer.phone}</div>
			</div>
			<div class="info-row">
				<div class="info-label">이메일 주소</div>
				<div class="info-value">${customer.email}</div>
			</div>
		</div>

		<div class="btn-group">
			<a href="/customer/updateForm?no=${customer.no}" class="btn btn-edit">회원
				수정</a>
			<a href="/customer/delete?no=${customer.no}" class="btn btn-withdraw">회원
				탈퇴</a>


			<a href="/customer/customerList" class="btn btn-list">목록으로</a>
		</div>
	</div>

</body>
</html>