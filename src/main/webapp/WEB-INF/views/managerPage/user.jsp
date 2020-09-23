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
<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
<!-- 커스텀 css 추가하기 -->
<link rel="stylesheet" href="../resources/css/custom.css">
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
					class="nav-item nav-link active" href="user">회원</a>
			</div>
			<div class="navbar-nav mr-sm-2">
				<a class="nav-item nav-link" href="userLogin">로그인</a> <a
					class="nav-item nav-link" href="userLogout">로그아웃</a> <a
					class="nav-item nav-link" href="userEdit">관리자 정보 수정</a>
			</div>
		</div>
	</nav>
	<header id="header">
		<div class="container p-3 bg-dark text-white">
			<div class="row">
				<div class="col-sm-9 info">
					<h4>
						<img src="../resources/img/userSmall.svg"> 회원<small>페이지를 관리하세요.</small>
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
								class="dropdown-item active" href="user">회원 관리</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container">
		<ol class="breadcrumb">
			<li class="active">웹사이트에 내 회원 목록을 관리하세요.</li>
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
							class="list-group-item">블로그 관리</a> <a href="user"
							class="list-group-item active">회원 관리<span
							class="badge badge-secondary">25</span></a>
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
								<li class="list-group-item">네이버</li>
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
						<a href="#" class="list-group-item active">신규 회원</a>
						<div class="list-group-item">
							<div class="list-group">
								<table class="table">
									<tbody>
										<tr>
											<th class="mobile" style="width: 60px; text-align: center;">번호</th>
											<th>아이디</th>
											<th class="mobile" style="width: 60px; text-align: center;">이름</th>
											<th class="mobile" style="width: 60px; text-align: center;">가입일</th>
										</tr>
										<tr>
											<td class="mobile" style="text-align: center;">1053</td>
											<td>gildong1234</td>
											<td class="mobile" style="text-align: center;">홍길동</td>
											<td class="mobile" style="text-align: center;">2020/09/05</td>
										</tr>
										<tr>
											<td class="mobile" style="text-align: center;">2</td>
											<td>abcabc</td>
											<td class="mobile" style="text-align: center;">ABC</td>
											<td class="mobile" style="text-align: center;">2020/09/05</td>
										</tr>
										<tr>
											<td class="mobile" style="text-align: center;">1</td>
											<td>changdieee</td>
											<td class="mobile" style="text-align: center;">창다이</td>
											<td class="mobile" style="text-align: center;">2020/09/05</td>
										</tr>
										<tr>
											<td class="mobile" style="text-align: center;">1</td>
											<td>changdieee2</td>
											<td class="mobile" style="text-align: center;">창다이</td>
											<td class="mobile" style="text-align: center;">2020/09/05</td>
										</tr>
										<tr>
											<td class="mobile" style="text-align: center;">1</td>
											<td>changdieee3</td>
											<td class="mobile" style="text-align: center;">창다이</td>
											<td class="mobile" style="text-align: center;">2020/09/05</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="list-group mt-3">
						<a href="#" class="list-group-item active">성별에 따른 회원 나이대 분포</a>
						<div class="list-group-item">
							<canvas id="radarChart"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="bg-primary mt-4 p-5 text-center" style="color: #ffffff;">
		Copyright &copy; 2020 김창대 All Rights Reserved. </footer>
	<!-- 제이쿼리 자바스크립트 추가하기 -->
	<script src="../resources/js/jquery.min.js"></script>
	<!-- Popper 자바스크립트 추가하기 -->
	<script src="../resources/js/popper.min.js"></script>
	<!-- 부트스트랩 자바스크립트 추가하기 -->
	<script src="../resources/js/bootstrap.min.js"></script>
	<!-- MDB 라이브러리 자바스크립트 추가하기 -->
	<script src="../resources/js/mdb.min.js"></script>
	<script>
		//radar
		var ctxR = document.getElementById("radarChart").getContext('2d');
		var myRadarChart = new Chart(ctxR, {
			type : 'radar',
			data : {
				labels : [ "10대", "20대", "30대", "40대", "50", "60대", "기타" ],
				datasets : [ {
					label : "남성",
					data : [ 65, 59, 90, 81, 56, 55, 40 ],
					backgroundColor : [ 'rgba(105, 0, 132, .2)', ],
					borderColor : [ 'rgba(200, 99, 132, .7)', ],
					borderWidth : 2
				}, {
					label : "여성",
					data : [ 28, 48, 40, 19, 96, 27, 35 ],
					backgroundColor : [ 'rgba(0, 250, 220, .2)', ],
					borderColor : [ 'rgba(0, 213, 132, .7)', ],
					borderWidth : 2
				} ]
			},
			options : {
				responsive : true
			}
		});
	</script>
</body>
</html>
