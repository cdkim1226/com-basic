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
<script src="../resources/js/jquery.min.js"></script>
<script>
	$('#userEdit').click(function() {
		$.ajax({
			url : '/user/userEdit',
			data : {
				userid : $('#userid').val(),
				nickname : $('#nickname').val(),
				email : $('#email').val(),
				sex : $('#sex').val(),
			},
			success : function(data) {
				if (data.code == 0) {
					alert('수정 성공 했습니다');
				} else if (data.code == 1) {
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
				<div class="col-md-9">
					<div class="list-group">
						<a href="#" class="list-group-item active">회원 정보 수정</a>
						<div class="list-group-item">
							<form action="/user/userEdit" method="post">
								<div class="form-group">
									<label>아이디</label> 
									<input type="text" id="userid" class="form-control" value="${get.userid}" readonly="readonly">
								</div>
								<%-- <div class="form-group">
									<label>비밀번호</label> 
									<input type="password" id="userpw" class="form-control" value="${get.userpw}">
								</div>
								<div class="form-group">
									<label>비밀번호 확인</label> 
									<input type="password" id="userpwcheck" class="form-control" value="${get.userpwcheck}">
								</div>
								<div class="form-group">
									<label>이름</label> 
									<input type="text" id="username" class="form-control" value="${get.username}" readonly="readonly">
								</div> --%>
								<div class="form-group">
									<label>닉네임</label> 
									<input type="text" id="nickname" class="form-control" value="${get.nickname}">
								</div>
								<div class="form-group">
									<label>성별</label> 
									<select class="form-control" id="sex" value="${get.sex}">
										<option>남성</option>
										<option>여성</option>
									</select>
								</div>
								<div class="form-group">
									<label>이메일</label> 
									<input type="email" class="form-control" id="email" value="${get.email}">
								</div>
								<button id="userEdit" class="btn btn-primary">수정하기</button>
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
	
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
</body>
</html>
