<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
					class="nav-item nav-link active" href="blog">블로그</a> <a
					class="nav-item nav-link" href="user">회원</a>
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
						<img src="resources/img/editSmall.svg"> 블로그<small>페이지를
							관리하세요.</small>
					</h4>
				</div>
				<div class="col-sm-3">
					<div class="btn-group float-right">
						<button type="button" class="btn btn-primary dropdown-toggle"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							관리 목록</button>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="index">대시보드</a> <a
								class="dropdown-item" href="event">이벤트 관리</a> <a
								class="dropdown-item active" href="blog">블로그 관리</a> <a
								class="dropdown-item" href="user">회원 관리</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="container">
		<ol class="breadcrumb">
			<li class="active">블로그 내에 포스트를 관리하세요.</li>
		</ol>
	</div>
	<section id="main">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="list-group">
						<a href="index" class="list-group-item">대시보드</a> <a
							href="event" class="list-group-item">이벤트 관리</a> <a
							href="blog" class="list-group-item active">블로그 관리<span
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
						<a href="#" class="list-group-item active">최신 포스팅</a>
						<div class="list-group-item">
							<div class="list-group">
								<div class="list-group">
									<a href="#"
										class="list-gruop=item list-group-item-action flex-column align-items-start active">
										<div class="d-flex w-100 justify-content-between">
											<h5 class="mb-1">Net Framework 3.5 문제 해결하는 방법!</h5>
											<small style="width: 120px; text-align: right;">1일 전</small>
										</div>
										<p class="mb-1">안녕하세요, 익친님들!</p> <small>좋아요 17개</small>
									</a> <a href="#"
										class="list-gruop=item list-group-item-action flex-column align-items-start active">
										<div class="d-flex w-100 justify-content-between">
											<h5 class="mb-1">테트리스 만들기!</h5>
											<small style="width: 120px; text-align: right;">3일 전</small>
										</div>
										<p class="mb-1">자바 게임 만들기</p> <small>좋아요 10개</small>
									</a> <a href="#"
										class="list-gruop=item list-group-item-action flex-column align-items-start active">
										<div class="d-flex w-100 justify-content-between">
											<h5 class="mb-1">개발환경 구축 방법</h5>
											<small style="width: 120px; text-align: right;">8일 전</small>
										</div>
										<p class="mb-1">개발환경 구축 방법</p> <small>좋아요 30개</small>
									</a>
								</div>
							</div>
							<button class="btn btn-success mt-2" data-toggle="modal"
								data-target="#modal">글 작성</button>
						</div>
					</div>
					<div class="list-group mt-3">
						<a href="#" class="list-group-item active">인기 포스팅</a>
						<div class="list-group-item">
							<canvas id="barChart"></canvas>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="modal fade" id="modal" tabindex="-1"
		aria-labelledby="modal" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">글 작성</h5>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label>제목</label> <input type="text" class="form-control">
						</div>
						<div class="form-group">
							<label>내용</label>
							<textarea class="form-control" style="height: 180px;"></textarea>
						</div>
						<div class="form-group">
							<label>해시태그</label> <input type="text" class="form-control">
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">작성하기</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
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
	<script>
		//bar
		var ctxB = document.getElementById("barChart").getContext('2d');
		var myBarChart = new Chart(ctxB, {
			type : 'bar',
			data : {
				labels : [ "Net Fra...", "자바(Ja..", "테트리스...", "개발환경..." ],
				datasets : [ {
					label : '조회수',
					data : [ 340, 250, 330, 203 ],
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)', ],
					borderColor : [ 'rgba(255,99,132,1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)', ],
					borderWidth : 1
				} ]
			},
			options : {
				scales : {
					yAxes : [ {
						ticks : {
							beginAtZero : true
						}
					} ]
				}
			}
		});
	</script>
</body>
</html>
