<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신규 등록 | MEDICAL SHOP</title>
<style>
    body {
        background-color: #f4f7f9;
        color: #333;
        font-family: 'Pretendard', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }
    .form-container {
        background: #fff;
        width: 100%;
        max-width: 450px;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.05);
        border-top: 8px solid #0077b6; /* 진한 하늘색 포인트 */
    }
    .header {
        text-align: center;
        margin-bottom: 30px;
    }
    .header h2 {
        color: #0077b6;
        margin: 0;
        font-size: 24px;
        letter-spacing: -1px;
    }
    .header p {
        font-size: 14px;
        color: #888;
        margin-top: 5px;
    }
    .input-group {
        margin-bottom: 18px;
    }
    .input-group label {
        display: block;
        font-size: 13px;
        font-weight: 600;
        margin-bottom: 8px;
        color: #555;
    }
    .input-group input {
        width: 100%;
        padding: 12px 15px;
        border: 1px solid #d1d9e0;
        border-radius: 8px;
        box-sizing: border-box;
        transition: all 0.2s;
        background-color: #fcfdfe;
    }
    .input-group input:focus {
        outline: none;
        border-color: #0077b6;
        background-color: #fff;
        box-shadow: 0 0 0 3px rgba(0, 119, 182, 0.1);
    }
    .submit-btn {
        width: 100%;
        padding: 15px;
        background-color: #0077b6;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 10px;
        transition: background 0.3s ease;
    }
    .submit-btn:hover {
        background-color: #005f8d;
        transform: translateY(-1px);
    }
    /* 리스트 바로가기 박스 버튼 스타일 */
.list-link-container {
    text-align: center;
    margin-top: 20px;
}

.list-link-container a {
    display: block; /* 가로를 꽉 채우는 박스 형태 */
    padding: 15px;
    background-color: #f8fbff; /* 아주 연한 하늘색 배경 */
    color: #0077b6; /* 진한 하늘색 글자 */
    border: 2px solid #0077b6; /* 진한 하늘색 테두리 */
    border-radius: 8px;
    text-decoration: none;
    font-size: 15px;
    font-weight: bold;
    transition: all 0.3s ease;
    box-sizing: border-box;
}

.list-link-container a:hover {
    background-color: #0077b6; /* 호버 시 배경색 반전 */
    color: white; /* 글자색 흰색으로 변경 */
    transform: translateY(-2px); /* 살짝 위로 뜨는 효과 */
    box-shadow: 0 5px 15px rgba(0, 119, 182, 0.2); /* 그림자 추가 */
}

.list-link-container a:active {
    transform: translateY(0);
}

</style>
</head>
<body>

<div class="form-container">
    <div class="header">
        <h2>MEDICAL <span>JOIN</span></h2>
        <p>안전한 진료를 위해 정보를 정확히 입력해주세요.</p>
    </div>

    <form action="/customer/register" method="post">
        <div class="input-group">
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" placeholder="사용할 아이디 입력" required>
        </div>
        <div class="input-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" placeholder="비밀번호 입력" required>
        </div>
        <div class="input-group">
            <label for="name">이름</label>
            <input type="text" id="name" name="name" placeholder="실명 입력" required>
        </div>
        <div class="input-group">
            <label for="phone">연락처</label>
            <input type="tel" id="phone" name="phone" placeholder="010-0000-0000">
        </div>
        <div class="input-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" placeholder="example@medical.com">
        </div>
        
        <button type="submit" class="submit-btn">등록 완료</button>
        
        <div class="list-link-container">
            <a href="/customer/customerList">회원리스트 바로가기</a>
        </div>
    </form>
</div>

</body>
</html>