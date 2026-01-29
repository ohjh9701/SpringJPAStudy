<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 완료 | MEDICAL SHOP</title>
<style>
    body { background-color: #f4f7f9; color: #333; font-family: 'Pretendard', sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
    .result-box { background: #fff; padding: 50px; border-radius: 20px; text-align: center; box-shadow: 0 10px 25px rgba(0,0,0,0.05); max-width: 400px; width: 90%; }
    .icon { font-size: 60px; color: #0077b6; margin-bottom: 20px; }
    h2 { color: #0077b6; margin-bottom: 10px; }
    p { color: #666; margin-bottom: 30px; line-height: 1.6; }
    .btn { display: inline-block; padding: 12px 30px; background-color: #0077b6; color: white; text-decoration: none; border-radius: 30px; font-weight: bold; transition: 0.3s; }
    .btn:hover { background-color: #005f8d; box-shadow: 0 5px 15px rgba(0,119,182,0.3); }
</style>
</head>
<body>

<div class="result-box">
    <div class="icon">✓</div>
    <h2>정상 등록되었습니다.</h2>
    <p>${coment}<br>건강한 쇼핑의 시작, 메디컬 샵입니다.</p>
    <a href="/customer/customerList" class="btn">회원리스트 이동</a>
</div>

</body>
</html>