<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | MEDICAL SHOP</title>
<style>
    /* 배경 및 기본 폰트 설정 */
    body {
        background-color: #f4f7f9;
        color: #333;
        font-family: 'Pretendard', sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    /* 로그인 카드 컨테이너 */
    .login-container {
        background: #ffffff;
        width: 100%;
        max-width: 400px;
        padding: 50px 40px;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.05);
        text-align: center;
        border-top: 8px solid #0077b6; /* 포인트 컬러: 진한 하늘색 */
    }

    .login-container h2 {
        color: #0077b6;
        font-size: 26px;
        font-weight: 800;
        margin-bottom: 10px;
        letter-spacing: -1px;
    }

    .login-container p {
        color: #888;
        font-size: 14px;
        margin-bottom: 35px;
    }

    /* 입력 필드 영역 */
    .input-group {
        margin-bottom: 20px;
        text-align: left;
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
        padding: 14px 15px;
        border: 1px solid #d1d9e0;
        border-radius: 10px;
        background-color: #fcfdfe;
        box-sizing: border-box;
        transition: all 0.3s ease;
    }

    .input-group input:focus {
        outline: none;
        border-color: #0077b6;
        background-color: #fff;
        box-shadow: 0 0 0 4px rgba(0, 119, 182, 0.1);
    }

    /* 로그인 버튼 스타일 및 애니메이션 */
    .login-btn {
        width: 100%;
        padding: 16px;
        background-color: #0077b6;
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 10px;
        transition: all 0.3s cubic-bezier(0.25, 0.8, 0.25, 1);
    }

    /* 호버 시 깊이감 있는 색상 변화 및 부드러운 이동 */
    .login-btn:hover {
        background-color: #005f8d;
        transform: translateY(-2px);
        box-shadow: 0 7px 14px rgba(0, 119, 182, 0.2);
    }

    .login-btn:active {
        transform: translateY(0);
    }

    /* 하단 보조 링크 */
    .footer-links {
        margin-top: 25px;
        font-size: 13px;
        color: #aaa;
    }

    .footer-links a {
        color: #0077b6;
        text-decoration: none;
        font-weight: 600;
        margin-left: 5px;
    }

    .footer-links a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="login-container">
    <h2>MEDICAL <span>LOGIN</span></h2>
    <p>서비스 이용을 위해 로그인해주세요.</p>
    
    <form action="/customer/login" method="post">
        <div class="input-group">
            <label for="id">아이디</label>
            <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" required>
        </div>
        
        <div class="input-group">
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
        </div>

        <button type="submit" class="login-btn">로그인</button>
    </form>

    <div class="footer-links">
        계정이 없으신가요? <a href="/customer/insertForm">신규 등록</a>
    </div>
</div>

</body>
</html>