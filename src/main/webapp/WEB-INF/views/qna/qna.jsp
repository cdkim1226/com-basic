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
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/comcustom.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row d-flex d-md-block flex-nowrap wrapper">
			<nav class="col-md-3 float-left col-1 p1-0 pr-0 collapse width show"
				id="sidebar">
				<div class="list-group border-0 card text-center text-md-left">
					<a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="resources/img/home.svg"><span class="d-none d-md-inline">메인</span>
					</a> <a href="#usermenu"
						class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar" data-toggle="collapse"
						aria-expanded="false"> <img style="width: 20px;"
						src="resources/img/user.svg"><span class="d-none d-md-inline">회원관리</span>
					</a>
					<div class="collapse" id="usermenu">
						<a href="#" class="list-group-item" data-parent="#sidebar">회원가입</a>
						<a href="#" class="list-group-item" data-parent="#sidebar">로그인</a>
						<a href="#" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
						<a href="#" class="list-group-item" data-parent="#sidebar">로그아웃</a>
					</div>
					<a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="resources/img/board.svg"><span class="d-none d-md-inline">자유게시판</span>
					</a> <a href="#" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar"> <img style="width: 20px;"
						src="resources/img/qna.svg"><span class="d-none d-md-inline">Q&A</span>
					</a> <a href="#search" class="list-group-item d-inline-block collapsed"
						data-parent="#sidebar" data-toggle="collapse"
						aria-expanded="false"> <img style="width: 20px;"
						src="resources/img/search.svg"><span class="d-none d-md-inline">검색</span>
					</a>
					<div class="collapse" id="search">
						<div class="input-group p-2" style="background-color: #1c1c1c;">
							<input type="text" class="form-control" placeholder="내용을 입력하세요">
						</div>
					</div>
				</div>
			</nav>
			<main id="main" class="col-md-9 float-left col p1-md-5 pt-4 main">
				<div class="page-header mt-3">
					<h4>Q & A</h4>
				</div>
				<br>
				<div class="panel panel-default">
					<div class="panel-heading mt-3">
						<h4 class="panel-title">
							<a href="#collapse1" data-toggle="collapse">▶게시판은 누구나 이용할 수
								있나요?</a>
						</h4>
					</div>
					<div class="panel-collapse collapse-in" id="collapse1">
						<div class="panel-body">
							저희 웹 사이트의 게시판은 <strong>누구나</strong> 이용할 수 있습니다.
						</div>
					</div>
					<div class="panel-heading mt-3">
						<h4 class="panel-title">
							<a href="#collapse2" data-toggle="collapse">▶고객센터의 전화번호가 뭐에요?</a>
						</h4>
					</div>
					<div class="panel-collapse collapse-in" id="collapse2">
						<div class="panel-body">
							고객센터의 전화번호는 <strong>02-123-1234</strong> 입니다.
						</div>
					</div>
					<div class="panel-heading mt-3">
						<h4 class="panel-title">
							<a href="#collapse3" data-toggle="collapse">▶위치가 어디입니까?</a>
						</h4>
					</div>
					<div class="panel-collapse collapse-in" id="collapse3">
						<div class="panel-body">
							저희 회사의 주소는 <strong>경기도 성남시 분당구</strong> 입니다.
						</div>
					</div>
					<div class="panel-heading mt-3">
						<h4 class="panel-title">
							<a href="#collapse4" data-toggle="collapse">▶상담원 이용 시간이 어떻게
								되나요?</a>
						</h4>
					</div>
					<div class="panel-collapse collapse-in" id="collapse4">
						<div class="panel-body">
							고객센터의 상담시간은 <strong>AM 10:00 ~ PM 06:00</strong> 입니다.
						</div>
					</div>
					<div class="panel-heading mt-3">
						<h4 class="panel-title">
							<a href="#collapse5" data-toggle="collapse">▶회원 가입 방법</a>
						</h4>
					</div>
					<div class="panel-collapse collapse-in" id="collapse5">
						<div class="panel-body">
							좌측 회원관리 버튼을 클릭하시면 <strong>회원 가입</strong> 버튼이 있습니다.
						</div>
					</div>
				</div>
				<br>
				<br>
				<div class="alert alert-warning">이 외에 답변 사항은 고객센터로 전화 주시면 친절히
					답변 하여 드리겠습니다.</div>
				<footer class="text-center" style="max-width: 1080px;">
					<p>Copyright &copy; 2020 김창대 All Rights Reserved.</p>
				</footer>
			</main>
		</div>
		<script src="resources/js/jquery.min.js"></script>
		<script src="resources/js/popper.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>
