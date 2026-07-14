<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>구구단 결과</title>
</head>
<body>
<div>
<a href="./">HOME</a>&nbsp;&nbsp;
<a href="ex1.jsp">예제1</a>&nbsp;&nbsp;
<a href="ex2.jsp">예제2</a>&nbsp;&nbsp;
<a href="ex3.jsp">예제3</a>&nbsp;&nbsp;
<a href="ex4.jsp">예제4</a>&nbsp;&nbsp;
<a href="ex5.jsp">예제5</a>&nbsp;&nbsp;
</div>
    <%
        // 1. 주소창에서 명찰(dan)을 달고 넘어온 데이터 가져오기
        String danStr = request.getParameter("dan");
    %>
    
    <h1>구구단 결과</h1>

    <p>원하시는 구구단의 '단'을 선택하고 출력 버튼을 눌러주세요</p>
    
    <form method="post">
        <select name="dan">
            <option value="2">2단</option>
            <option value="3">3단</option>
            <option value="4">4단</option>
            <option value="5">5단</option>
            <option value="6">6단</option>
            <option value="7">7단</option>
            <option value="8">8단</option>
            <option value="9">9단</option>
        </select>
        <button type="submit">출력</button>
    </form>
    
    <br>

    <%
        // 2. [안전벨트 if 문] 데이터가 비어있는 비상 상황 판별 (처음 접속했을 때)
        if (danStr == null || danStr.equals("")) {
        } else {
            // 3. [정상 흐름] 검증을 통과한 안전한 데이터만 숫자로 번역
            int dan = Integer.parseInt(danStr);
    %>
            <hr>
        <h2>구구단 <%= dan %>단 결과</h2>

        <ul>
            <%
                // 들여쓰기 구조 강조: if-else의 정상 흐름 내부에서 안전하게 실행되는 루프
                for (int i = 1; i <= 9; i++) {
            %>
                <li><%= dan %> X <%= i %> = <%= dan * i %></li>
            <%
                }
            %>
        </ul>
    <%
        } // if-else 제어문 끝
    %>
</body>
</html>