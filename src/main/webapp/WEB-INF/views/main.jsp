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
    <style>
        .done-todo tr {
            background-color: gray;
        }
    </style>
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
        <button><a href="/todo/register/${member.id}">추가</a></button>
        <c:if test="${not empty todolist}">
            <table class="table">
                <colgroup>
                    <col style="width:15%;">
                    <col style="width:35%;">
                    <col style="width:5%;">
                    <col style="width:15%;">
                    <col style="width:15%;">
                    <col style="width:7.5%;">
                    <col style="width:7.5%;">
                </colgroup>
                <thead>
                <tr>
                    <th>제목</th>
                    <th>내용</th>
                    <th>완료</th>
                    <th>등록 시간</th>
                    <th>수정 시간</th>
                    <th>수정</th>
                    <th>삭제</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="todo" items="${todolist}">
                    <tr class="${todo.done ? 'done-todo' : ''}">
                        <td>${todo.title}</td>
                        <td>${todo.detail}</td>
                        <td>
                            <c:choose>
                                <c:when test="${todo.done}">Y</c:when>
                                <c:otherwise>N</c:otherwise>
                            </c:choose>
                        </td>
                        <td>${todo.registerDt}</td>
                        <td>${todo.updateDt}</td>
                        <td><button><a href="/todo/update/${todo.id}">수정</a></button></td>
                        <td><button class="delete-btn" data-id="${todo.id}">삭제</button></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </c:if>
    </c:otherwise>
</c:choose>
</body>
<script>
    $(document).ready(function (){
        $(".delete-btn").click(function (){
            let id = $(this).data("id");

            $.ajax({
                url: "/todo/delete/"+id,
                type: "get",
                success: function (result){
                    window.location.reload();
                }
            });
        });
    });
</script>
</html>
