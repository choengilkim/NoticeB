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
<title>경마 게임</title>
<style type="text/css">
a {
	text-decoration-line: none;
	
}
</style>
</head>
<body>
<h1><a href="/">홈으로가기</a></h1>
<hr>
	<h1>경마 게임</h1>

    <form method="get" action="/play">
        <p>말 선택: 
            <select name="horse">
                <option value="1">말 1</option>
                <option value="2">말 2</option>
                <option value="3">말 3</option>
            </select>
        </p>
        <p>
            <input type="submit" value="경주 시작">
        </p>
    </form>
</body>
</html>