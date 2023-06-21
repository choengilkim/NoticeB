<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-store">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<title>login.jsp</title>
<style type="text/css">
* {
  margin: 0px auto;
  padding: 0px;
  text-align: center;
  font-family: "Open Sans", sans-serif;
}

.cotn_principal {
  position: absolute;
  width: 100%;
  display: flex;
  height: 100%;
  background: #cfd8dc;
  background: -moz-linear-gradient(
    -45deg,
    #cfd8dc 0%,
    #607d8b 100%,
    #b0bec5 100%
  ); /* FF3.6-15 */
  background: -webkit-linear-gradient(
    -45deg,
    #cfd8dc 0%,
    #607d8b 100%,
    #b0bec5 100%
  ); /* Chrome10-25,Safari5.1-6 */
  background: linear-gradient(
    135deg,
    #cfd8dc 0%,
    #607d8b 100%,
    #b0bec5 100%
  );
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cfd8dc', endColorstr='#b0bec5',GradientType=1 ); /* IE6-9 fallback on horizontal gradient */
}

.cont_centrar {
  display: flex;
  align-self: center;
  width: 100%;
}

.cont_login {
  position: relative;
  width: 640px;
}

.cont_back_info {
  position: relative;
  float: left;
  width: 640px;
  height: 280px;
  overflow: hidden;
  background-color: #fff;
  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
}

.cont_forms {
  position: absolute;
  overflow: hidden;
  top: 0px;
  left: 0px;
  width: 320px;
  height: 280px;
  background-color: #eee;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_login {
  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
  height: 420px;
  top: -60px;
  left: 0px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_sign_up {
  box-shadow: 1px 10px 30px -10px rgba(0, 0, 0, 0.5);
  height: 480px;
  top: -60px;
  left: 320px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_img_back_grey {
  position: absolute;
  width: 950px;
  top: -80px;
  left: -116px;
}

.cont_img_back_grey > img {
  width: 100%;
  -webkit-filter: grayscale(100%);
  filter: grayscale(100%);
  opacity: 0.2;
  animation-name: animar_fondo;
  animation-duration: 20s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

.cont_img_back_ {
  position: absolute;
  width: 950px;
  top: -80px;
  left: -116px;
}

.cont_img_back_ > img {
  width: 100%;
  opacity: 0.3;
  animation-name: animar_fondo;
  animation-duration: 20s;
  animation-timing-function: linear;
  animation-iteration-count: infinite;
  animation-direction: alternate;
}

.cont_forms_active_login > .cont_img_back_ {
  top: -20px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_sign_up > .cont_img_back_ {
  top: -20px;
  left: -435px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_info_log_sign_up {
  position: absolute;
  width: 640px;
  height: 280px;
  top: 0px;
  z-index: 1;
}

.col_md_login {
  position: relative;
  float: left;
  width: 50%;
}

.col_md_login > h2 {
  font-weight: 400;
  margin-top: 70px;
  color: #757575;
}

.col_md_login > p {
  font-weight: 400;
  margin-top: 15px;
  width: 80%;
  color: #37474f;
}

.btn_login {
  background-color: #26c6da;
  border: none;
  padding: 10px;
  width: 200px;
  border-radius: 3px;
  box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
  color: #fff;
  margin-top: 10px;
  cursor: pointer;
}

.col_md_sign_up {
  position: relative;
  float: left;
  width: 50%;
}

.cont_ba_opcitiy > h2 {
  font-weight: 400;
  color: #fff;
}

.cont_ba_opcitiy > p {
  font-weight: 400;
  margin-top: 15px;
  color: #fff;
}
/* ----------------------------------
background text    
------------------------------------
 */
.cont_ba_opcitiy {
  position: relative;
  background-color: rgba(120, 144, 156, 0.55);
  width: 80%;
  border-radius: 3px;
  margin-top: 60px;
  padding: 15px 0px;
}

.btn_sign_up {
  background-color: #ef5350;
  border: none;
  padding: 10px;
  width: 200px;
  border-radius: 3px;
  box-shadow: 1px 5px 20px -5px rgba(0, 0, 0, 0.4);
  color: #fff;
  margin-top: 10px;
  cursor: pointer;
}
.cont_forms_active_sign_up {
  z-index: 2;
}

@-webkit-keyframes animar_fondo {
  from {
    -webkit-transform: scale(1) translate(0px);
    -moz-transform: scale(1) translate(0px);
    -ms-transform: scale(1) translate(0px);
    -o-transform: scale(1) translate(0px);
    transform: scale(1) translate(0px);
  }
  to {
    -webkit-transform: scale(1.5) translate(50px);
    -moz-transform: scale(1.5) translate(50px);
    -ms-transform: scale(1.5) translate(50px);
    -o-transform: scale(1.5) translate(50px);
    transform: scale(1.5) translate(50px);
  }
}
@-o-keyframes identifier {
  from {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
  }
  to {
    -webkit-transform: scale(1.5);
    -moz-transform: scale(1.5);
    -ms-transform: scale(1.5);
    -o-transform: scale(1.5);
    transform: scale(1.5);
  }
}
@-moz-keyframes identifier {
  from {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
  }
  to {
    -webkit-transform: scale(1.5);
    -moz-transform: scale(1.5);
    -ms-transform: scale(1.5);
    -o-transform: scale(1.5);
    transform: scale(1.5);
  }
}
@keyframes identifier {
  from {
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -ms-transform: scale(1);
    -o-transform: scale(1);
    transform: scale(1);
  }
  to {
    -webkit-transform: scale(1.5);
    -moz-transform: scale(1.5);
    -ms-transform: scale(1.5);
    -o-transform: scale(1.5);
    transform: scale(1.5);
  }
}
.cont_form_login {
  position: absolute;
  opacity: 0;
  display: none;
  width: 320px;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_forms_active_login {
  z-index: 2;
}

.cont_form_sign_up {
  position: absolute;
  width: 320px;
  float: left;
  opacity: 0;
  display: none;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
  transition: all 0.5s;
}

.cont_form_sign_up > input {
  text-align: left;
  padding: 15px 5px;
  margin-left: 10px;
  margin-top: 20px;
  width: 260px;
  border: none;
  color: #757575;
}

.cont_form_sign_up > h2 {
  margin-top: 50px;
  font-weight: 400;
  color: #757575;
}

.cont_form_login > input {
  padding: 15px 5px;
  margin-left: 10px;
  margin-top: 20px;
  width: 260px;
  border: none;
  text-align: left;
  color: #757575;
}

.cont_form_login > h2 {
  margin-top: 110px;
  font-weight: 400;
  color: #757575;
}
.cont_form_login > a,
.cont_form_sign_up > a {
  color: #757575;
  position: relative;
  float: left;
  margin: 10px;
  margin-left: 30px;
}
</style>
</head>
<body>
<%@ include file="loginJs.jsp" %>

	<div class="cotn_principal">
		<div class="cont_centrar">
			<div class="cont_login">
				<div class="cont_info_log_sign_up">
					<div class="col_md_login">
						<div class="cont_ba_opcitiy">
							<h2>로그인</h2>
							<p>로그인하실 경우 클릭해주세요</p>
							<button class="btn_login" onclick="change_to_login()">LOGIN</button>
						</div>
					</div>

					<div class="col_md_sign_up">
						<div class="cont_ba_opcitiy">
							<h2>회원가입</h2>
							<p>회원가입을 원하시면 클릭해주세요</p>
							<button class="btn_sign_up" onclick="change_to_sign_up()">SIGN
								UP</button>
						</div>
					</div>
				</div>

				<div class="cont_back_info">
					<div class="cont_img_back_grey">
						<img src="img/insol2.jpg" alt="" />
					</div>
				</div>

				<div class="cont_forms">
					<div class="cont_img_back_">
						<img src="img/insol2.jpg" alt="" />
					</div>
					<div class="cont_form_login">
						<a href="#" onclick="hidden_login_and_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>LOGIN</h2>
						<form action="login" method="post">
						<input type="text" name="username" placeholder="Id" /> <input type="password"
							name="password" placeholder="Password" />
						<button class="btn_login" onclick="change_to_login()">LOGIN</button>
						</form>
					</div>

					<div class="cont_form_sign_up">
						<a href="#" onclick="hidden_login_and_sign_up()"><i
							class="material-icons">&#xE5C4;</i></a>
						<h2>SIGN UP</h2>
						<input type="text" placeholder="Email" /> <input type="text"
							placeholder="User" /> <input type="password"
							placeholder="Password" /> <input type="password"
							placeholder="Confirm Password" />
						<button class="btn_sign_up" onclick="change_to_sign_up()">SIGN
							UP</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>