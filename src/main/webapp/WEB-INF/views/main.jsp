<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>main</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
    <c:choose>
        <c:when test="${empty member.name}">
            <h1>메인 페이지 입니다.</h1>
            <button><a href="/member/join" >회원가입</a></button>
            <button><a href="/member/login" >로그인</a></button>
        </c:when>
        <c:otherwise>
            <h1>안녕하세요 ${member.name} 님</h1>
            <button><a href="/member/logout">로그아웃</a></button>
            <c:if test="${not empty todolist}">
                <c:forEach var="todo" items="${todolist}">
                    <div>
                        <span>${todo.title}</span>
                        <span>${todo.detail}</span>
                        <span>${todo.done}</span>
                        <span>${todo.updateDt}</span>
                        <button><a href="/todo/update/${todo.id}">수정</a></button>
                        <button id="delete-btn" data-id="${todo.id}">삭제</button>
                    </div>
                </c:forEach>
            </c:if>
            <button><a href="/todo/register/${member.id}">추가</a></button>
        </c:otherwise>
    </c:choose>
</body>
<script>
    $(document).ready(function (){
        $("#delete-btn").click(function (){
            let id = $(this).data("id");

            $.ajax({
                url: "/todo/delete/"+id,
                type: "get",
                success: function (result){
                    window.location.reload();
                }
            })
        })
    })
</script>
</html>