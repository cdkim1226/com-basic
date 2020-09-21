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
$('#userEdit').click(function(){
	$.ajax({
		url: '/user/userEdit',
		type: "Post",
		data:{
			userid: $('#userid').val(),
			nickname: $('#nickname').val(),
			email: $('#email').val(),
			sex: $('#sex').val(),
			userpw: $('#userpw').val(),
			userpwcheck: $('#userpwcheck').val(),
			username: $('#username').val(),
		},
		success: function(data){
			if(data.code == 0){
				alert('수정 성공 했습니다');
			}else if(data.code == 1){
				alert('수정 실패 했습니다');
			}
		}
	});
});
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
						<a href="/user/userJoin" class="list-group-item" data-parent="#sidebar">회원가입</a>
						<a href="/user/userLogin" class="list-group-item" data-parent="#sidebar">로그인</a>
						<a href="/user/userEdit" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
						<a href="/user/userLogout" class="list-group-item" data-parent="#sidebar">로그아웃</a>
					</div>
					<a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="../resources/img/board.svg"><span
						class="d-none d-md-inline">자유게시판</span>
					</a> <a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="../resources/img/qna.svg"><span class="d-none d-md-inline">Q&A</span>
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
				<h4>회원 정보 수정</h4>
				<br>
				<div class="col-md-9 ml-5">
					<div class="list-group">
						<h2 class="list-group-item active">
							회원 정보 수정
						</h2>
						<div class="list-group-item">
						<form action="/user/userEdit" method="post">
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">아이디</span>
								</div>	
								<div class="col-md-9">
									<input type="text" disabled="true" name="userid" id="userid" class="form-control"
											 value="${get.userid}">
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">이름</span>
								</div>	
								<div class="col-md-9">
									<input type="text" disabled="true" name="username" class="form-control" 
										placeholder="이름 입력" value="${get.username}">
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">이메일</span>
								</div>	
								<div class="col-md-9">
									<input type="email" name="email" id="email" class="form-control" 
										placeholder="이메일 입력" value="${get.email}">
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">닉네임</span>
								</div>	
								<div class="col-md-9">
									<input type="text" name="nickname" id="nickname" class="form-control" 
										placeholder="닉네임 입력" value="${get.nickname}">
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">성별</span>
								</div>	
								<div class="col-md-9">
									<select class="form-control" name="sex" id="sex">
											<option selected>성별</option>
											<option>남성</option>
											<option>여성</option>
										</select>
								</div>
							</div><br><br>
							<input type="hidden" id="userpw" value="${get.userpw}">
							<input type="hidden" id="userpwcheck" value="${get.userpwcheck}">
							<button type="submit" id="userEdit" class="btn btn-primary float-right">수정하기</button>
							<a href="/user/userPwChange" class="btn btn-primary float-left">비밀번호 변경</a>
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
