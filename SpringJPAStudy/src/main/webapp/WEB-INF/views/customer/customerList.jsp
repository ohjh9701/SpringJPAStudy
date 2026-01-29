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
/* 검색바 스타일 */
.search-area {
    display: flex;
    align-items: center;
    gap: 10px;
}

.search-form {
    display: flex;
    background: #f8fbff;
    border: 1px solid #d1d9e0;
    border-radius: 30px;
    padding: 5px 15px;
    transition: all 0.3s ease;
}

.search-form:focus-within {
    border-color: #0077b6;
    box-shadow: 0 0 0 3px rgba(0, 119, 182, 0.1);
}

.search-form select {
    border: none;
    background: none;
    outline: none;
    font-size: 13px;
    color: #0077b6;
    font-weight: 600;
    cursor: pointer;
    padding-right: 5px;
}

.search-form input {
    border: none;
    background: none;
    outline: none;
    padding: 8px;
    font-size: 13px;
    width: 180px;
}

.search-btn {
    background: none;
    border: none;
    cursor: pointer;
    font-size: 16px;
    color: #0077b6;
    padding: 0 5px;
    transition: transform 0.2s;
}

.search-btn:hover {
    transform: scale(1.2);
}
/* 전체리스트보기 버튼 스타일 */
.btn-list-all {
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 0 15px;
    height: 40px; /* 검색창 높이와 통일 */
    background-color: #fff;
    color: #0077b6;
    border: 1px solid #d1d9e0;
    border-radius: 30px;
    text-decoration: none;
    font-size: 13px;
    font-weight: 600;
    transition: all 0.3s ease;
    white-space: nowrap; /* 텍스트 줄바꿈 방지 */
}

.btn-list-all:hover {
    background-color: #f8fbff;
    border-color: #0077b6;
    box-shadow: 0 4px 10px rgba(0, 119, 182, 0.1);
    transform: translateY(-1px);
}
</style>
</head>
<body>

	<div class="list-container">
    <div class="header">
        <div>
            <h2>환자 정보 조회 <span>Patient List</span></h2>
        </div>
        
        <div class="search-area">
            <form action="/customer/search" method="get" class="search-form">
                <select name="searchType">
                    <option value="id">아이디</option>
                    <option value="name">이름</option>
                    <option value="email">이메일</option>
                </select>
                <input type="text" name="keyword" placeholder="검색어 입력..." required>
                <button type="submit" class="search-btn">🔍</button>
            </form>
            
            <a href="/customer/customerList" class="btn-list-all">전체 목록</a>
        </div>
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

		<a href="/customer/insertForm" class="btn-home">회원 등록하기</a>
	</div>

</body>
</html>