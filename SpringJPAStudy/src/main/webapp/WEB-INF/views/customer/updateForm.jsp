<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정 | MEDICAL SHOP</title>
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
        border-top: 8px solid #0077b6;
    }
    .header {
        text-align: center;
        margin-bottom: 30px;
    }
    .header h2 {
        color: #0077b6;
        margin: 0;
        font-size: 24px;
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
        background-color: #fcfdfe;
    }
    /* 수정 불가능한 필드(고유번호, 아이디) 스타일 */
    .input-group input[readonly] {
        background-color: #f1f3f5;
        color: #888;
        cursor: not-allowed;
    }
    .input-group input:focus:not([readonly]) {
        outline: none;
        border-color: #0077b6;
        box-shadow: 0 0 0 3px rgba(0, 119, 182, 0.1);
    }
    .btn-group {
        display: flex;
        gap: 10px;
        margin-top: 20px;
    }
    .btn {
        flex: 1;
        padding: 15px;
        border: none;
        border-radius: 8px;
        font-size: 15px;
        font-weight: bold;
        cursor: pointer;
        transition: all 0.3s;
        text-align: center;
        text-decoration: none;
    }
    .btn-submit {
        background-color: #0077b6;
        color: white;
    }
    .btn-submit:hover {
        background-color: #005f8d;
    }
    .btn-cancel {
        background-color: #f1f3f5;
        color: #666;
    }
</style>
</head>
<body>

<div class="form-container">
    <div class="header">
        <h2>EDIT <span>RECORD</span></h2>
        <p>변경이 필요한 환자 정보를 수정해주세요.</p>
    </div>

    <form action="/customer/update" method="post">
        <input type="hidden" name="no" value="${Customer.no}">

        <div class="input-group">
            <label>환자 번호 (고유키)</label>
            <input type="text" value="${Customer.no}" readonly>
        </div>

        <div class="input-group">
            <label>아이디</label>
            <input type="text" name="id" value="${Customer.id}" readonly>
        </div>

        <div class="input-group">
            <label for="password">비밀번호 확인/변경</label>
            <input type="password" id="password" name="password" value="${Customer.password}" required>
        </div>

        <div class="input-group">
            <label for="name">성함</label>
            <input type="text" id="name" name="name" value="${Customer.name}" required>
        </div>

        <div class="input-group">
            <label for="phone">연락처</label>
            <input type="tel" id="phone" name="phone" value="${Customer.phone}">
        </div>

        <div class="input-group">
            <label for="email">이메일</label>
            <input type="email" id="email" name="email" value="${Customer.email}">
        </div>
        
        <div class="btn-group">
            <button type="submit" class="btn btn-submit">수정 완료</button>
            <a href="javascript:history.back()" class="btn btn-cancel">취소</a>
        </div>
    </form>
</div>

</body>
</html>