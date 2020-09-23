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
function del() {
	if(confirm("정말 삭제하시겠습니까?")==true){
		document.remove.submit();
	}else{
		return;
	}
} // del()


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
            <a href="" id="dashBoard" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/setting.svg"><span class="d-none d-md-inline">관리자 페이지</span>
            </a>
          </div>
        </nav>
			<main id="main" class="col-md-9 float-left col p1-md-5 pt-4 main">
				<div class="list-group ml-5" style="max-width: 1080px;">
					<h5 class="list-group-item active">글 보기</h5>
					<div class="list-group-item">
						<form>
							<div class="form-group">
								<span class="form-group-item-text">#${get.seq}</span> <span
									class="form-group-item-text">#${get.id}</span> <span
									class="form-group-item-text" title="${get.updatedate}">#${get.updatedate}</span>
								<br> <label>제목</label>
								<p class="boardTitle">${get.title}</p>
								<div class="form-group pt-3">
									<label>내용</label>
									<p class="boardTitle" style="height: 320px;">${get.content}</p>
									<a href="/board/boardEdit?seq=${get.seq}&id=${get.id}"
										class="btn btn-primary">글 수정</a> <a
										href="/board/delete?seq=${get.seq}&id=${get.id}"
										onclick="return confirm(&#39;정말로 삭제하시겠습니까?&#39;)"
										class="btn btn-primary">글 삭제</a> <a href="board"
										class="btn btn-primary">글 목록</a>
								</div>
							</div>
						</form>
					</div>
				</div>
				<br>
				<br>
				<!-- 댓글 -->
				<c:if test="${reply.size() > 0}">
					<c:forEach var="rlist" items="${reply}">
						<div class="col-md-9 list-group ml-5" style="max-width: 1080px;">
							<h5 class="list-group-item" style="background: lightgray;">댓글</h5>
							<div class="list-group-item">
								<form>
									<div class="form-group">
										<span class="form-group-item-text">#${rlist.rid}</span> 
										<span class="form-group-item-text" title="${rlist.rregdate}">${rlist.rregdate}</span>
									</div>
									<fieldset class="form" id="bottom-text-form-${rlist.rseq}">
									<article id="note-text-${rlist.rseq}"
											 class="list-group-item-text note-text">
										${rlist.rcontent }
									</article>									
									</fieldset>
									<button type="button" class="btn btn-light float-right">삭제</button>
									<button class="btn btn-light float-right" data-target="modal" data-toggle="#modifyModal">댓글수정</button>
								</form>
							</div>
						</div>
					</c:forEach>
				</c:if>
				<br>
	 			<button class="btn btn-primary ml-5" data-toggle="modal"
							data-target="#modal">댓글 달기</button>
				<div class="modal fade" id="modal" tabindex="-1"
					aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">댓글 작성</h5>
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="/reply/replyWrite" method="post" onsubmit="return postForm()">
									<div class="form-group">
										<label>댓글 내용</label>
										<textarea class="form-control" name="rcontent" id="rcontent" style="height: 240px;"></textarea>
									</div>
									<!--    <div class="form-group">
                					<label>해시태그</label>
               						<input type="text" class="form-control">
              						</div> -->
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">취소</button>
										<button type="submit" class="btn btn-primary">작성하기</button>
										<input type="hidden" name="rid" value="창다이"/>
										<input type="hidden" name="seq" value="${get.seq}"/>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<c:forEach var="rlist" items="${reply}">
				<div class="modal fade" id="modifyModal" tabindex="-1"
					aria-labelledby="modal" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title">댓글 수정</h5>
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<form action="/reply/modify" method="post" onsubmit="return postForm()">
									<div class="form-group">
										<label>댓글 내용</label>
										<textarea class="form-control" name="rcontent" id="rcontent" style="height: 240px;"></textarea>
									</div>
									<!--    <div class="form-group">
                					<label>해시태그</label>
               						<input type="text" class="form-control">
              						</div> -->
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">취소</button>
										<button type="submit" class="btn btn-primary">수정하기</button>
										<input type="hidden" name="rid" value="창다이"/>
										<input type="hidden" name="rseq" value="${rlist.rseq}"/>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			
				<footer class="text-center" style="max-width: 920px;">
					<p>
						Copyright &copy; 2020 <b>김창대</b> All Rights Reserved.
					</p>
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
