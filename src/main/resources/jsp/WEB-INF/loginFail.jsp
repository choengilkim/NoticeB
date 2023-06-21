<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel = "icon" href="favicon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<title>loginFail.jsp</title>
</head>
<body>
<h1>Login 실패</h1>
<%
	Exception exception = (Exception)request.getAttribute("exception");
%>
<h1><%=exception.getMessage() %></h1>

<a href="/login">다시 로그인</a>

</body>
</html>