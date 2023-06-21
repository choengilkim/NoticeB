<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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

<title>홈페이지</title>
<style type="text/css">
.hidden {
    display: none;
}
.easyfoot {
	margin-left: 18%;
	margin-top: 20px;
	width:40%;
	height:150px;
}

.table1 {
	margin-top:50px;
	margin-left:auto; 
    margin-right:auto;
	font-family: 'Black Han Sans', sans-serif;
	width: 50%;
	font-size: 30px;
}
.table3 {
	margin-left: 30px;
	height: 400px;
}
.table3 td {
	text-align: left;
}

.lgo {
    position: absolute;
 	top: 10%;
  	right: 20%;
}

.div1 img {
    position: relative;
    width:30%;
    height:30%;
    margin-top:5%; 
    left:20%;
}
.div2 {
	text-align: center;
}
.div3 {
	padding-top: 100px;
	padding-left: 30px;
	font-size: 20px;
}
.hospital {
	opacity: 0.8;
}


.order {
	right: 10px;
	width:600px;
	height: 200px;
}

h5 {
	position: absolute;
 	top: 13%;
  	right: 30%;
}

td {
	text-align: center;
	font-size: 20px;
}

a {
	color: #828282;
	text-decoration-line: none;
	
}
a:hover {
	color: black;
}
input {
	width:65px;
}
</style>
</head>
<body>
<a href="/"></a><input class="easyfoot" type="image" src="img/easyfoot.jpg"></a>
<h5 class="<c:if test="${empty pageContext.request.userPrincipal.name}">hidden</c:if>">
<sec:authentication property="name"/>님 환영합니다!</h5>
<a href="/login" class="lgo"><input type="image" src="img/login.jpg"class="<c:if test="${not empty pageContext.request.userPrincipal.name}">hidden</c:if>"></a>
<a href="/logout" class="lgo"><input type="image" src="img/logout.jpg" class="<c:if test="${empty pageContext.request.userPrincipal.name}">hidden</c:if>"></a>
<table class="table1" style="border-color: white">
	<tbody>
		<tr><td><a href="/insol">제작과정</a></td>
		<td><a href="/SymptomsDiseases">증상 및 질환</a></td>
		<td><a href="/board">문의사항</a></td>
		<td><a href="/contractor">협력업체</a></td>
		<td><a href="/map">오시는길</a></td>
		<td><a href="/event">이벤트</a></td>
		</tr>
	</tbody>
</table>
<hr>
<table class="table3">
	<tbody>
	<tr><td>
이지풋은 개개인의 발모형을 본을 떠서 100% 수작업만을 고집하고 있습니다.<br> 
대부분 대학병원 정형외과와 재활의학과 교수님들 처방으로 제작되기 때문에 믿고 맡길 수 있는 업체입니다^^<br><br>
<a href="/insol" class="btn btn-primary">제작과정 보러가기</a>
	</td>
<td><img src="img/order.jpg" class="order"></td>
	</tbody>
</table>
<div class="div3" style="height: 500px; background-color:#EBFBFF;">
저희 이지풋은 증상과 발의 구조적인문제에 따라 깔창에 옵션 및 모양을 다르게 제작합니다.<br><br>
<li>평발</li> 
<li>요족</li> 
<li>족저근막염</li> 
<li>지간신경종</li> 
<li>굳은살(티눈)등</li> 
</div>
<div class="div2"><h4>이지풋 (Easy Foot)</h4>​
의료용 맞춤 깔창 전문<br>​
영업시간<br>
평일 09:30 ~ 18:30<br>
토요일 사전 예약<br>
일요일(공휴일)휴무<br>​
문의전화 070-7350-1842<br>​
전화상담 시간 09:00 ~ 21:00<br>
</div>
<div class="div1"><img src="img/insol.jpg"><img src="img/footform.jpg"></div>
</body>
</html>