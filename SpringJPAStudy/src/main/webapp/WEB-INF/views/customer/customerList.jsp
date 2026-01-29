<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환자 명단 관리 | MEDICAL SHOP</title>
<style>
body {
	background-color: #f4f7f9;
	color: #333;
	font-family: 'Pretendard', sans-serif;
	margin: 0;
	padding: 50px;
	display: flex;
	justify-content: center;
}

.list-container {
	background: #ffffff;
	width: 100%;
	max-width: 1000px;
	padding: 40px;
	border-radius: 20px;
	box-shadow: 0 15px 35px rgba(0, 0, 0, 0.05);
	border-top: 8px solid #0077b6;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: flex-end;
	margin-bottom: 30px;
	padding-bottom: 20px;
	border-bottom: 2px solid #f0f4f7;
}

.header h2 {
	color: #0077b6;
	font-size: 24px;
	margin: 0;
}

.header h2 span {
	font-weight: 400;
	font-size: 16px;
	color: #888;
	margin-left: 10px;
}

/* 테이블 스타일 */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 10px;
}

th {
	background-color: #f8fbff;
	color: #0077b6;
	font-weight: 700;
	padding: 15px;
	text-align: left;
	border-bottom: 2px solid #d1d9e0;
	font-size: 14px;
}

td {
	padding: 15px;
	border-bottom: 1px solid #f0f4f7;
	font-size: 15px;
	color: #555;
}

/* 행 호버 효과 */
tbody tr:hover {
	background-color: #f0f9ff;
	cursor: pointer;
	transition: background 0.2s;
}

.no-data {
	text-align: center;
	padding: 50px;
	color: #aaa;
}

/* 버튼 스타일 */
.btn-home {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #0077b6;
	color: white;
	text-decoration: none;
	border-radius: 8px;
	font-weight: bold;
	font-size: 14px;
	transition: background 0.3s;
}

.btn-home:hover {
	background-color: #005f8d;
}
</style>
</head>
<body>

	<div class="list-container">
		<div class="header">
			<h2>
				환자 정보 조회 <span>Patient List</span>
			</h2>
		</div>

		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>성함</th>
					<th>연락처</th>
					<th>이메일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${not empty customerList}">
						<c:forEach var="customer" items="${customerList}">
							<tr onclick="location.href='/customer/detail?no=${customer.no}'">
								<td>${customer.no}</td>
								<td>${customer.id}</td>
								<td>${customer.name}</td>
								<td>${customer.phone}</td>
								<td>${customer.email}</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" class="no-data">등록된 환자 정보가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>

		<a href="/customer/mainPage" class="btn-home">메인으로 돌아가기</a>
	</div>

</body>
</html>