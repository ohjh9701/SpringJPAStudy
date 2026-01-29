<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 오류 | MEDICAL SHOP</title>
<style>
    body { background-color: #f4f7f9; color: #333; font-family: 'Pretendard', sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
    .result-box { background: #fff; padding: 50px; border-radius: 20px; text-align: center; box-shadow: 0 10px 25px rgba(0,0,0,0.05); max-width: 400px; width: 90%; border-top: 8px solid #e63946; }
    .icon { font-size: 60px; color: #e63946; margin-bottom: 20px; }
    h2 { color: #333; margin-bottom: 10px; }
    p { color: #888; margin-bottom: 30px; }
    .btn-retry { display: inline-block; padding: 12px 30px; background-color: #151515; color: white; text-decoration: none; border-radius: 8px; font-weight: bold; cursor: pointer; border:none; }
</style>
</head>
<body>

<div class="result-box">
    <div class="icon">!</div>
    <h2>등록에 실패하였습니다.</h2>
    <p>입력 정보를 다시 확인하거나<br>관리자에게 문의해 주세요.</p>
    <button onclick="history.back()" class="btn-retry">다시 시도하기</button>
</div>

</body>
</html>