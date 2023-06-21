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
<title>게시판 목록보기</title>
<style type="text/css">
table {
    margin-left:auto; 
    margin-right:auto;
    overflow: hidden;
}

table, td, th {
    border-collapse: collapse;
    border: 1px solid black;
    text-align: center;
};

.container {
  position: relative;
}

.lg {
    position: absolute;
 	top: 0;
  	right: 10%;
  	font-size: 20px;
}
h1 {
	text-align: center;
}
input {
	width:60px;
}
</style>
</head>
<body>
<div class="container">
<a href="/logout" class="lg"><input type="image" src="img/logout(1).jpg"></a>
</div>

	<h1>게시판 Page</h1>
	<hr>
	
	<table width="500px" cellpadding="0" cellspacing="0" border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>제목</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
		<tr>
			<td>1</td>
			<td>홍길동</td>
			<td>제목</td>
			<td>날짜</td>
			<td>3</td>
		</tr>
		<tr>
			<td colspan="5"><a href="writeForm">글작성</a></td>
		</tr>
	</table>

</body>
</html>