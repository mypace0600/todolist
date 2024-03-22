<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>main</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script>
        window.onload = function() {
            <% if(Boolean.TRUE.equals(request.getAttribute("emailExists"))) { %>
            alert('이미 등록된 이메일입니다.');
            <% } %>
        }
    </script>
</head>
<body>
    <h1>회원가입 페이지 입니다.</h1>
    <form action="/member/register" method="post">
        <input type="text" placeholder="이름을 입력해주세요" name="name"/>
        <input type="email" placeholder="이메일을 입력해주세요" name="email"/>
        <button type="submit">회원가입</button>
    </form>
</body>
</html>