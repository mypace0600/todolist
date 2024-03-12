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
<h1>TODO 리스트 수정 페이지 입니다.</h1>
<form action="/todo/update/${todo.id}" method="post">
    <input type="text" placeholder="제목을 입력해주세요" name="title" value="${todo.title}"/>
    <input type="text" placeholder="내용을 입력해주세요" name="detail" value="${todo.detail}"/>
    <select name="done">
        <option value="true" ${todo.done == true ? 'selected' : ''}>완료</option>
        <option value="false" ${todo.done == false ? 'selected' : ''}>미완료</option>
    </select>
    <inpyt type="hidden" name="id" value="${todo.id}"/>
    <button type="submit">수정</button>
</form>
</body>
</html>