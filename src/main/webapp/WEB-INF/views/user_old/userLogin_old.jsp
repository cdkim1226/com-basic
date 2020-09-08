<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>관리자 페이지</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- 부트스트랩 css 추가하기 -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- 커스텀 css 추가하기 -->
    <link rel="stylesheet" href="resources/css/custom.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="./index.html">관리자 페이지</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse"
      data-target="#navbar" aria-controls="navbar" aria-expanded="false">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse justify-content-between" id="navbar">
        <div class="navbar-nav">
          <a class="nav-item nav-link" href="./index.html">대시보드</a>
          <a class="nav-item nav-link" href="./event.html">이벤트</a>
          <a class="nav-item nav-link" href="./blog.html">블로그</a>
          <a class="nav-item nav-link" href="./user.html">회원</a>
        </div>
        <div class="navbar-nav mr-sm-2">
          <a class="nav-item nav-link active" href="./userLogin.html">로그인</a>
          <a class="nav-item nav-link" href="./userLogout.html">로그아웃</a>
          <a class="nav-item nav-link" href="./userEdit.html">관리자 정보 수정</a>
        </div>
      </div>
    </nav>
    <header id="header">
      <div class="container p-3 bg-dark text-white">
        <div class="row">
          <div class="col-sm-9 info">
            <h4><img src="resources/img/setting.svg"> 로그인<small>을 합시다.</small></h4>
          </div>
        </div>
      </div>
    </header>
    <div class="container">
        <ol class="breadcrumb">
          <li class="active">로그인 이후 관리자 페이지에 접속하세요.</li>
        </ol>
    </div>
    <section id="main">
      <div class="container" style="max-width: 560px;">
        <form>
          <div class="form-group">
            <label>아이디</label>
            <input type="text" class="form-control">
          </div>
          <div class="form-group">
            <label>비밀번호</label>
            <input type="password" class="form-control">
          </div>
          <button type="submit" class="btn btn-primary">로그인</button>
        </form>
      </div>
    </section>
    <footer class="bg-dark mt-4 p-5 text-center" style="color: #ffffff;">
      Copyright &copy; 2020 김창대 All Rights Reserved.
    </footer>
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
