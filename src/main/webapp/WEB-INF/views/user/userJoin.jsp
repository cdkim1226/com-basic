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
	var oneclick = 1; // 요총 한번만 할 수 있는 스위치(1=on, 0=off)
	var authclick = 1;
	var ii = 0;
	var pp = 0;
	var pcp = 0;
	var em = 0;
	var nn = 0;
	var nc = 0;
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
				url : '/user/useridDuplicate',
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
		var password = $('#userpw').val();
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
		var password = $('#userpwcheck').val();
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
			pcp = 1;
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
				url : '/user/emailDuplicate',
				data : {
					email : email
				},
				success : function(data) {
					if (data.message == '200') {
						$('#emailCheck2').attr("style", "display: none");
						em = 1;
					} else if (data.message == 'fail') {
						$('#emailCheck2').attr("style", "");
					}
				}
			});
		}
	}; // emCheck()

	var nmCheck = function() {
		var name = $('#username').val();
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
				url : '/user/nicknameDuplicate',
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
		if (s.length < 0) {
			
			return false;
		} else
			s = 1;
			return true;
	};

	// 전체 유효성 검사 통과 후 회원가입
	var duplicationCheck = function() {
		console.log('ㅇㅇ');
		if (ii == 1 && pp == 1 && pcp == 1 && nn == 1 && nc == 1 && 
			em == 1 && s == 1) {
			document.getElementById("joinForm").submit();
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
							<form action="/user/userJoin" method="post" id="joinForm">
								<div class="alert alert-warning" role="alert"<%--style="display: none"--%>>
								<ul>
									<li style="display: none" id="idCheck1">[아이디] : 4 글자 이상
										입력하세요 ~~</li>
									<li style="display: none" id="idCheck2">[아이디] : 영문자 와 숫자
										로만 입력하세요 ~~</li>
									<li style="display: none" id="idCheck3">[아이디] : 이미 중복된 값이
										존재합니다.</li>
									<li style="display: none" id="pwCheck1">[비밀번호] : 4 글자 이상
										입력하세요 ~~</li>
									<li style="display: none" id="pwCheck2">[비밀번호] : 특수문자를 반드시
										1개 이상 입력하세요 ~~</li>
									<li style="display: none" id="pwCheck3">[비밀번호] : 숫자와 특수문자
										로만 입력하세요 ~~</li>
									<li style="display: none" id="nameCheck1">[이름] : 2 글자 이상
										입력하세요 ~~</li>
									<li style="display: none" id="nameCheck2">[이름] : 한글 또는
										영문으로만 입력하세요 ~~</li>
									<li style="display: none" id="nickCheck1">[닉네임] : 이미 중복된
										값이 존재합니다.</li>
									<li style="display: none" id="nickCheck2">[닉네임] : 한글 / 영문
										/ 숫자만 가능합니다.</li>
									<li style="display: none" id="emailCheck1">[이메일] : 이메일 형식이
										아닙니다.</li>
									<li style="display: none" id="emailCheck2">[이메일] : 이미 중복된
										값이 존재합니다.</li>
									<li style="display: none" id="authCheck1">[인증키] : 숫자 4개를
										입력하세요.</li>
									<li style="display: none" id="authCheck2">[인증키] : 인증번호가 맞지
										않습니다.</li>
									<li style="display: none" id="authkeysuccess">[인증키] :
										인증성공.</li>
									<li style="display: none" id="finalCheck">[입력오류] : 확인하지 않은
										항목이 있습니다. 확인 후 전송하세요.</li>
								</ul>
							</div>
								<div class="form-group">
									<input type="text" id="userid" name="userid" onfocusout="idCheck()"
										class="form-control" placeholder="아이디 입력">
								</div>
								<div class="form-group">
									<input type="password" id="userpw" name="userpw" onfocusout="pwCheck()"
										class="form-control" placeholder="비밀번호 입력">
								</div>
								<div class="form-group">
									<input type="password" id="userpwcheck" name="userpwcheck" onfocusout="pwcCheck()"
										class="form-control" placeholder="비밀번호 확인">
								</div>
								<div class="form-group">
									<input type="text" id="username" name="username" onfocusout="nmCheck()"
										class="form-control" placeholder="이름 입력">
								</div>
								<div class="form-group">
									<input type="email" id="email" name="email" onfocusout="emCheck()"
										class="form-control" placeholder="이메일 입력">
								</div>
								<div class="form-group">
									<input type="text" id="nickname" name="nickname" onfocusout="nickCheck()"
										class="form-control" placeholder="닉네임 입력">
								</div>
								<div class="form-group">
									<select class="form-control" name="sex" id="sex" onfocusout="sCheck()">
										<option selected>성별</option>
										<option>남성</option>
										<option>여성</option>
									</select>
								</div>
								<button type="submit" class="btn btn-primary" id="join"
									onclick="duplicationCheck()">가입하기</button>
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
