<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width-device-width, initial-scale=1, shrink-to-fit=no">
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
        <main id="main" class="col-md-9 float-left col p1-md-5 pt-3 main">
          <div class="page-header mt-3">
            <h2>신규 웹 사이트</h2>
          </div>
          <p class="lead">이곳은 회원님들끼리 자유롭게 의사소통을 하며 즐길 수 있는 커뮤니티 웹 사이트입니다.</p>
          <hr>
          <button class="btn btn-success">자세히 알아보기</button>
          <div class="width collapse show mt-3" aria-expanded="true">
            <p>본 사이트에서는 회원 관리 페이지, 자유게시판, Q&A 페이지를 제공합니다.
          </div>
          <div id="carousel" class="carousel slide" style="max-width: 1080px;" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carousel" data-slide-to="0" class="active"></li>
              <li data-target="#carousel" data-slide-to="1"></li>
              <li data-target="#carousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img  class="d-block w-100" src="../resources/img/image1.jpg" alt="첫 번째 이미지">
              </div>
              <div class="carousel-item">
                <img  class="d-block w-100" src="../resources/img/image2.jpg" alt="두 번째 이미지">
              </div>
              <div class="carousel-item">
                <img  class="d-block w-100" src="../resources/img/image3.jpg" alt="세 번째 이미지">
              </div>
            </div>
            <a href="#carousel" class="carousel-control-prev" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">이전 사진</span>
            </a>
            <a href="#carousel" class="carousel-control-next" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">다음 사진</span>
            </a>
          </div>
          <section class="mt-4 mb-3 pt-4 pb-3" style="max-width: 1080px;">
            <p class="lead">공지사항</p>
            <hr>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="mobile" style="width: 60px; text-align: center;">번호</th>
                  <th style="text-align: center;">제목</th>
                  <th class="mobile" style="width: 80px; text-align: center;">작성자</th>
                  <th class="mobile" style="width: 120px; text-align: center;">날짜</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="mobile" style="text-align: center;">3</td>
                  <td>신규 운영진을 모집합니다.</td>
                  <td class="mobile" style="text-align: center;">운영자</td>
                  <td class="mobile" style="text-align: center;">2020-09-08</td>
                </tr>
                <tr>
                  <td class="mobile" style="text-align: center;">3</td>
                  <td>커뮤니티에 오신 것을 환영합니다.</td>
                  <td class="mobile" style="text-align: center;">운영자</td>
                  <td class="mobile" style="text-align: center;">2020-09-08</td>
                </tr>
                <tr>
                  <td class="mobile" style="text-align: center;">3</td>
                  <td>커뮤니티 웹 사이트가 개설되었습니다.</td>
                  <td class="mobile" style="text-align: center;">운영자</td>
                  <td class="mobile" style="text-align: center;">2020-09-07</td>
                </tr>
              </tbody>
            </table>
          </section>
          <section style="max-width: 1080px;">
            <p class="lead">오시는 길</p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3169.7662669043557!2d127.21351785020687!3d37.39535947973126!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357caa2b6a90f17b%3A0xf13f376354865da7!2z6rK96riw64-EIOq0keyjvOyLnCDtg5zsoITrj5kgNDk0!5e0!3m2!1sko!2skr!4v1599547683578!5m2!1sko!2skr"
            width="100%" height="480px" frameborder="0" style="border:0 max-width: 1080px;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
          </section>
          <hr>
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
