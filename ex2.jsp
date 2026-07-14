<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>구구단 결과</title>
</head>
<body>
    <%
        // 주소창에 매달려온 명찰 "dan"의 값을 자바 문자열로 가져옵니다.
        String danStr = request.getParameter("dan");
        
        // 산술 연산 및 반복 루프를 위해 숫자로 형변환합니다.
        int dan = Integer.parseInt(danStr);
    %>
    <h2>📊 자바 서버가 계산한 <%= dan %>단 결과</h2>
    <hr>
    <ul>
        <%
            // HTML 리스트 태그(<li>)를 1부터 9까지 대량 생성하는 루프 구조 강조
            for (int i = 1; i <= 9; i++) {
        %>
            <li><%= dan %> X <%= i %> = <%= dan * i %></li>
        <%
            }
        %>
    </ul>
    <br>
    <a href="index.html">🔙 다시 선택하러 가기</a>
</body>
</html>
