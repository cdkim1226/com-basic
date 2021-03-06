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
            <a href="" id="dashBoard" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/setting.svg"><span class="d-none d-md-inline">관리자 페이지</span>
            </a>
          </div>
        </nav>
			<main id="main" class="col-md-9 float-left col p1-md-5 pt-4 main">
				<h4>글 수정</h4>
				<br>
				<div class="col-md-12 ml-1">
					<div class="list-group" style="max-width: 1080px;">
					<h5 class="list-group-item active">글 수정</h5>
						<div class="list-group-item">
							<form action="/board/boardEdit" method="post" onsubmit="return postForm()">
								<div class="form-group">
									<label>제목</label> <input type="text" id="title" name="title" class="form-control"
										placeholder="제목을 입력하세요." value="${get.title}">
									<div class="form-group pt-3">
										<label>내용</label>
										<textarea class="form-control" name="content" id="content" style="height: 320px;"
											placeholder="내용을 입력하세요.">${get.content}</textarea>
									</div>
									<button type="submit" class="btn btn-primary">글 수정</button>
									<input type="hidden" name="id" value="${get.id}">
									<input type="hidden" name="seq" value="${get.seq}">
								</div>
							</form>
						</div>
					</div>
				</div>
				<footer class="text-center" style="max-width: 920px;">
					<p>Copyright &copy; 2020 김창대 All Rights Reserved.</p>
				</footer>
			</main>
		</div>
	</div>
	<script src="../resources/js/jquery.min.js"></script>
	<script src="../resources/js/popper.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../resources/script/managerPageBtn.js"></script>
</body>
</html>
