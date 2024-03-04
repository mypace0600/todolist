<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>main</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
    <c:choose>
        <c:when test="${not empty member.name}">
            <h1>안녕하세요 ${member.name} 님</h1>
        </c:when>
        <c:otherwise>
            <button><a href="/member/join" >회원가입</a></button>
            <button><a href="/member/login" >로그인</a></button>
        </c:otherwise>
    </c:choose>
</body>
</html>