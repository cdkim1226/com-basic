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
$('#updatef').click(function(){
	$.ajax({
		url: 'updatef',
		success: function(result){
			$('#client_result').html(result);
		}
	});
});
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row d-flex d-md-block flex-nowrap wrapper">
			 <nav class="col-md-3 float-left col-1 p1-0 pr-0 collapse width show" id="sidebar">
          <div class="list-group border-0 card text-center text-md-left">
            <a href="/" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/home.svg"><span class="d-none d-md-inline">메인</span>
            </a>
            <a href="#usermenu" class="list-group-item d-inline-block collapsed"
              data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="../resources/img/user.svg"><span class="d-none d-md-inline">회원관리</span>
            </a>
            <div class="collapse" id="usermenu">
            <c:if test="${logID == null}">
              	<a href="/user/userJoin" class="list-group-item" data-parent="#sidebar">회원가입</a>
              	<a href="/user/userLogin" class="list-group-item" data-parent="#sidebar">로그인</a>
            </c:if>
            <c:if test="${logID != null}">
            	<a href="/user/userDetail" class="list-group-item" style="color: white;" data-parent="#sidebar">${logName}</a>
            	<a href="/user/userEdit" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
              	<a href="/user/userLogout" class="list-group-item" data-parent="#sidebar">로그아웃</a>
            </c:if>
            </div>
            <a href="/board/board" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/board.svg"><span class="d-none d-md-inline">자유게시판</span>
            </a>
            <a href="/qna/qna" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/qna.svg"><span class="d-none d-md-inline">Q&A</span>
            </a>
           <!--  <a href="#search" class="list-group-item d-inline-block collapsed"
              data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="../resources/img/search.svg"><span class="d-none d-md-inline">검색</span>
            </a> 
            <div class="collapse" id="search">
              <div class="input-group p-2" style="background-color: #1c1c1c;">
                <input type="text" class="form-control" placeholder="내용을 입력하세요">
              </div>
            </div> -->
           <a href="manager/dashBoard" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/setting.svg"><span class="d-none d-md-inline">관리자 페이지</span>
            </a>
          </div>
        </nav>
			<main id="main" class="col-md-9 float-left col p1-md-5 pt-4 main">
				<h4>회원 정보</h4>
				<br>
				<div class="col-md-7 ml-5">
					<div class="list-group">
						<h2 class="list-group-item active">
							회원 정보
						</h2>
						<div class="list-group-item">
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">아이디</span>
								</div>	
								<div class="col-md-9">
									<span class="form-control">${get.userid}</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">이름</span>
								</div>	
								<div class="col-md-9">
									<span class="form-control">${get.username}</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">이메일</span>
								</div>	
								<div class="col-md-9">
									<span class="form-control">${get.email}</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">닉네임</span>
								</div>	
								<div class="col-md-9">
									<span class="form-control">${get.nickname}</span>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3 text-center">
									<span class="form-control bg-dark" style="color: white;">성별</span>
								</div>	
								<div class="col-md-9">
									<span class="form-control">${get.sex}</span>
								</div>
							</div>
						</div>
					</div><br><br>
					<div style="max-width: 1080px;">
            		<a href="/user/userEditf" class="btn btn-primary float-right">회원정보수정</a>
          			</div>
				</div>
			</main>
			<footer class="mt-4 p-5 text-center">
					<p>Copyright &copy; 2020 김창대 All Rights Reserved.</p>
				</footer>
		</div>
	</div>
	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
</body>
</html>
