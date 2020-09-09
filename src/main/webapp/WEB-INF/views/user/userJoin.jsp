<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width-device-width, initial-scale=1, shrink-to-fit=no">
<title>커뮤니티 웹 사이트</title>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/css/comcustom.css">
<script>
	var id = 0;
	var pw = 0;
	var pwc = 0;
	var em = 0;
	var name = 0;
	var nick = 0;
	var s = 0;

	var idCheck = function() {
		if (idCheck) {

		}
		var userid = $('#userid').val();
		if (userid.length < 4) {
			console.log(userid);
			$('#idCheck1').attr("style", "");
			return false;
		} else if (userid.replace(/[a-z.0-9]/gi, '').length > 0) {
			$('#idCheck1').attr("style", "display: none");
			$('#idCheck2').attr("style", "");
			return false;
		} else {
			$('#idCheck1').attr("style", "display: none");
			$('#idCheck2').attr("style", "display: none");
			$.ajax({
				type : 'Get',
				url : '/member/useridDuplicate',
				data : {
					userid : userid
				},
				success : function(data) {
					if (data.message == '200') {
						$('#idCheck3').attr("style", "display: none");
						ii = 1;
						return true;
					} else if (data.message == 'fail') {
						$('#idCheck3').attr("style", "");
						return false;
					}
				}
			});

		}
	}; // idCheck()

	var pwCheck = function() {
		var password = $('#password').val();
		var pLength = password.length;
		if (password.length < 4) {
			$('#pwCheck1').attr("style", "");
			return false;
		} else if (password.replace(/[!-*]/gi, '').length >= pLength) {
			$('#pwCheck1').attr("style", "display: none");
			$('#pwCheck2').attr("style", "");
			return false;
		} else if (password.replace(/[0-9.!-*]/gi, '').length > 0) {
			$('#pwCheck2').attr("style", "display: none");
			$('#pwCheck3').attr("style", "");
		} else {
			$('#pwCheck1').attr("style", "display: none");
			$('#pwCheck2').attr("style", "display: none");
			$('#pwCheck3').attr("style", "display: none");
			pp = 1;
			return true;
		}
	}; // pwCheck()

	var pwcCheck = function() {
		var password = $('#password').val();
		var pLength = password.length;
		if (password.length < 4) {
			$('#pwCheck1').attr("style", "");
			return false;
		} else if (password.replace(/[!-*]/gi, '').length >= pLength) {
			$('#pwCheck1').attr("style", "display: none");
			$('#pwCheck2').attr("style", "");
			return false;
		} else if (password.replace(/[0-9.!-*]/gi, '').length > 0) {
			$('#pwCheck2').attr("style", "display: none");
			$('#pwCheck3').attr("style", "");
		} else {
			$('#pwCheck1').attr("style", "display: none");
			$('#pwCheck2').attr("style", "display: none");
			$('#pwCheck3').attr("style", "display: none");
			pp = 1;
			return true;
		}
	}; // pwcCheck()

	var emCheck = function() {
		var email = $('#email').val();
		var exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
		if (exptext.test(email) == false) {
			$('#emailCheck1').attr("style", "");
			return false;
		} else {
			$('#emailCheck1').attr("style", "display: none");
			$.ajax({
				type : 'Get',
				url : '/member/emailDuplicate',
				data : {
					email : email
				},
				success : function(data) {
					if (data.message == '200') {
						$('#emailCheck2').attr("style", "display: none");
						emailauth = 1;
					} else if (data.message == 'fail') {
						$('#emailCheck2').attr("style", "");
					}
				}
			});
		}
	}; // emCheck()

	var nmCheck = function() {
		var name = $('#fullName').val();
		if (name.length < 2) {
			console.log(name.length);
			$('#nameCheck1').attr("style", "");
			return false;
		} else if (name.replace(/[a-z.가-힇]/gi, '').length > 0) {
			$('#nameCheck1').attr("style", "display: none");
			$('#nameCheck2').attr("style", "");
			return false;
		} else {
			$('#nameCheck1').attr("style", "display: none");
			$('#nameCheck2').attr("style", "display: none");
			nn = 1;
			return true;
		}
	}; // nmCheck()

	var nickCheck = function() {
		var nickname = $('#nickname').val();
		if (nickname.replace(/[a-z.가-힇.0-9]/gi, '').length > 0) {
			$('#nickCheck2').attr("style", "");
			return false;
		} else {
			$('#nickCheck2').attr("style", "display: none");
			$.ajax({
				type : 'Get',
				url : '/member/nicknameDuplicate',
				data : {
					nickname : nickname
				},
				success : function(data) {
					if (data.message == '200') {
						$('#nickCheck1').attr("style", "display: none");
						nc = 1;
						return true;
					} else if (data.message == 'fail') {
						$('#nickCheck1').attr("style", "");
						return false;
					}
				}
			});
		}
	}; // nickCheck()
	function sCheck() {
		var s = $('#sex').val();
		console.log(userid);
		if (s.length > 0) {
			s = 1;
			return true;
		} else
			return false;
	};

	// 전체 유효성 검사 통과 후 회원가입
	var duplicationCheck = function() {
		console.log('ㅇㅇ');
		if (ii == 1 && pp == 1 && nn == 1 && nc == 1 && em == 1) {
			document.getElementById("loginForm").submit();
			return true;
		} else {
			$('#finalCheck').attr("style", "");
			return false;
		}
	};
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row d-flex d-md-block flex-nowrap wrapper">
			<nav class="col-md-3 float-left col-1 p1-0 pr-0 collapse width show"
				id="sidebar">
				<div class="list-group border-0 card text-center text-md-left">
					<a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="../resources/img/home.svg"><span
						class="d-none d-md-inline">메인</span>
					</a> <a href="#usermenu"
						class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar" data-toggle="collapse"
						aria-expanded="false"> <img style="width: 20px;"
						src="../resources/img/user.svg"><span
						class="d-none d-md-inline">회원관리</span>
					</a>
					<div class="collapse" id="usermenu">
						<a href="userJoin" class="list-group-item" data-parent="#sidebar">회원가입</a>
						<a href="userLogin" class="list-group-item" data-parent="#sidebar">로그인</a>
						<a href="userEdit" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
						<a href="userLogout" class="list-group-item"
							data-parent="#sidebar">로그아웃</a>
					</div>
					<a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="../resources/img/board.svg"><span
						class="d-none d-md-inline">자유게시판</span>
					</a> <a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="../resources/img/qna.svg"><span
						class="d-none d-md-inline">Q&A</span>
					</a> <a href="#search" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar" data-toggle="collapse"
						aria-expanded="false"> <img style="width: 20px;"
						src="../resources/img/search.svg"><span
						class="d-none d-md-inline">검색</span>
					</a>
					<div class="collapse" id="search">
						<div class="input-group p-2" style="background-color: #1c1c1c;">
							<input type="text" class="form-control" placeholder="내용을 입력하세요">
						</div>
					</div>
				</div>
			</nav>
			<main id="main" class="col-md-9 float-left col p1-md-5 pt-4 main">
				<h4>회원 가입</h4>
				<br>
				<div class="col-md-9 ml-5">
					<div class="list-group">
						<h5 class="list-group-item active">회원 가입</h5>
						<div class="list-group-item">
							<form action="user/userJoin" method="post">
								<div class="form-group">
									<input type="text" id="userid" name="userid"
										class="form-control" placeholder="아이디 입력">
								</div>
								<div class="form-group">
									<input type="password" id="userpw" name="userpw"
										class="form-control" placeholder="비밀번호 입력">
								</div>
								<div class="form-group">
									<input type="password" id="userpwcheck" name="userpwcheck"
										class="form-control" placeholder="비밀번호 확인">
								</div>
								<div class="form-group">
									<input type="text" id="username" name="username"
										class="form-control" placeholder="이름 입력">
								</div>
								<div class="form-group">
									<input type="email" id="email" name="email"
										class="form-control" placeholder="이메일 입력">
								</div>
								<div class="form-group">
									<input type="text" id="nickname" name="nickname"
										class="form-control" placeholder="닉네임 입력">
								</div>
								<div class="form-group">
									<select class="form-control" name="sex" id=sex>
										<option selected>성별</option>
										<option>남성</option>
										<option>여성</option>
									</select>
								</div>
								<button type="submit" class="btn btn-primary" id="join"
									onclick="return inCheck()">가입하기</button>
							</form>
						</div>
					</div>
				</div>
				<footer class="text-center" style="max-width: 1080px;">
					<p>Copyright &copy; 2020 김창대 All Rights Reserved.</p>
				</footer>
			</main>
		</div>
	</div>
	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
</body>
</html>
