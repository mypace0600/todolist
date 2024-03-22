<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>main</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
    <h1>회원가입 페이지 입니다.</h1>
    <form>
        <input type="text" placeholder="이름을 입력해주세요" name="name" id="name"/>
        <input type="email" placeholder="이메일을 입력해주세요" name="email" id="email"/>
        <button type="button" id="joinBtn">회원가입</button>
    </form>
</body>
<script>
    $("#joinBtn").on("click",function(){
        let data = {
            name : $("#name").val(),
            email : $("#email").val()
        };

        $.ajax({
            url:"/member/register",
            type:"post",
            contentType:"application/json",
            data: JSON.stringify(data),
            success:function(response){
                if(response.checkEmail==true){
                    alert("이미 사용중인 이메일입니다.");
                } else {
                    location.href="/";
                }
            }
        })
    })
</script>
</html>