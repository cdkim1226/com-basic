<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<title>관리자 페이지</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- 부트스트랩 css 추가하기 -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!-- 커스텀 css 추가하기 -->
<link rel="stylesheet" href="resources/css/custom.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		<a class="navbar-brand" href="./index.html">관리자 페이지</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbar" aria-controls="navbar" aria-expanded="false">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-between"
			id="navbar">
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="index">대시보드</a> <a
					class="nav-item nav-link" href="event">이벤트</a> <a
					class="nav-item nav-link" href="blog">블로그</a> <a
					class="nav-item nav-link" href="user">회원</a>
			</div>
			<div class="navbar-nav mr-sm-2">
				<a class="nav-item nav-link" href="userLogin">로그인</a> <a
					class="nav-item nav-link" href="userLogout">로그아웃</a> <a
					class="nav-item nav-link active" href="userEdit">관리자 정보
					수정</a>
			</div>
		</div>
	</nav>
	<header id="header">
		<div class="container p-3 bg-dark text-white">
			<div class="row">
				<div class="col-sm-9 info">
					<h4>
						<img src="resources/img/setting.svg"> 관리자<small>페이지를 관리하세요.</small>
					</h4>
				</div>
				<div class="col-sm-3">
					<div class="btn-group float-right">
						<button type="button" class="btn btn-primary dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							관리 목록▼</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="index">대시보드</a> <a
								class="dropdown-item" href="event">이벤트 관리</a> <a
								class="dropdown-item" href="blog">블로그 관리</a> <a
								class="dropdown-item" href="user">회원 관리</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container">
		<ol class="breadcrumb">
			<li class="active">관리자 정보를 수정한 이후에 즉시 반영됩니다.</li>
		</ol>
	</div>
	<section id="main">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
						<a href="index" class="list-group-item">대시보드</a> <a
							href="event" class="list-group-item">이벤트 관리<span
							class="badge badge-secondary">25</span></a> <a href="blog"
							class="list-group-item">블로그 관리<span
							class="badge badge-secondary">12</span></a> <a href="user"
							class="list-group-item">회원 관리<span
							class="badge badge-secondary">30</span></a>
					</div>
					<div class="p-2 my-2">
						<h5 class="mt-2">CPU 점유율</h5>
						<div class="progress"
							style="Height: 20px; background-color: #f2f2f2">
							<div
								class="progress-bar progress-bar-striped bg-success progress-bar-animated"
								role="progressbar" style="width: 10%;" aria-valuenow="10"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
						<h5 class="mt-2">메모리 점유율</h5>
						<div class="progress"
							style="Height: 20px; background-color: #f2f2f2">
							<div
								class="progress-bar progress-bar-striped bg-primary progress-bar-animated"
								role="progressbar" style="width: 50%;" aria-valuenow="10"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
						<h5 class="mt-2">디스크 점유율</h5>
						<div class="progress"
							style="Height: 20px; background-color: #f2f2f2">
							<div
								class="progress-bar progress-bar-striped bg-danger progress-bar-animated"
								role="progressbar" style="width: 75%;" aria-valuenow="10"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
						<h5 class="mt-2">트래픽</h5>
						<div class="progress"
							style="Height: 20px; background-color: #f2f2f2">
							<div
								class="progress-bar progress-bar-striped bg-warning progress-bar-animated"
								role="progressbar" style="width: 100%;" aria-valuenow="10"
								aria-valuemin="0" aria-valuemax="100"></div>
						</div>
					</div>
					<div class="p-2 my-2">
						<div class="card text-center pt-2 bg-light">
							<h5 class="pt-2 pb-2">외부 사이트</h5>
							<ul class="list-group">
								<li class="list-group-item"><a href="https://www.naver.com">네이버</a></li>
								<li class="list-group-item">유튜브</li>
								<li class="list-group-item">페이스북</li>
								<li class="list-group-item">인스타그램</li>
							</ul>
							<div class="card-footer text-musted">12분 전</div>
						</div>
					</div>
				</div>
				<div class="col-md-9">
					<div class="list-group">
						<a href="#" class="list-group-item active">관리자 정보 수정</a>
						<div class="list-group-item">
							<form>
								<div class="form-group">
									<label>아이디</label> <input type="text" class="form-control">
								</div>
								<div class="form-group">
									<label>비밀번호</label> <input type="password" class="form-control">
								</div>
								<div class="form-group">
									<label>비밀번호 확인</label> <input type="password"
										class="form-control">
								</div>
								<div class="form-group">
									<label>성별</label> <select class="form-control">
										<option selected>남성</option>
										<option>여성</option>
									</select>
								</div>
								<div class="form-group">
									<label>이메일</label> <input type="email" class="form-control">
								</div>
								<div class="form-row">
									<div class="form-group col-md-2">
										<label>도</label> <input type="text" class="form-control">
									</div>
									<div class="form-group col-md-3">
										<label>시/군/읍</label> <input type="text" class="form-control">
									</div>
									<div class="form-group col-md-7">
										<label>상세주소</label> <input type="text" class="form-control">
									</div>
								</div>
								<button type="submit" class="btn btn-primary">수정하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="bg-primary mt-4 p-5 text-center" style="color: #ffffff;">
		Copyright &copy; 2020 김창대 All Rights Reserved. </footer>
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="resources/js/jquery.min.js"></script>
	<!-- Popper 자바스크립트 추가하기 -->
	<script src="resources/js/popper.min.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- MDB 라이브러리 자바스크립트 추가하기 -->
	<script src="resources/js/mdb.min.js"></script>

</body>
</html>
