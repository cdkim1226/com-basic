<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <title>관리자 페이지</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- 부트스트랩 css 추가하기 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <!-- 커스텀 css 추가하기 -->
    <link rel="stylesheet" href="./css/custom.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
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
          <a class="nav-item nav-link" href="./userLogin.html">로그인</a>
          <a class="nav-item nav-link active" href="./userLogout.html">로그아웃</a>
          <a class="nav-item nav-link" href="./userEdit.html">관리자 정보 수정</a>
        </div>
      </div>
    </nav>
    <header id="header">
      <div class="container p-3 bg-dark text-white">
        <div class="row">
          <div class="col-sm-9 info">
            <h4><img src="./img/setting.svg"> 로그아웃에<small>성공했습니다.</small></h4>
          </div>
        </div>
      </div>
    </header>
    <div class="container">
        <ol class="breadcrumb">
          <li class="active">페이지에 접속하시려면 로그인 페이지로 이동하세요.</li>
        </ol>
    </div>
    <section id="main">
      <div class="container">
        <a href="./userLogout.html" class="btn btn-primary">로그인 페이지로 이동하기</a>
      </div>
    </section>
    <footer class="bg-primary mt-4 p-5 text-center" style="color: #ffffff;">
      Copyright &copy; 2020 김창대 All Rights Reserved.
    </footer>
    <!-- 제이쿼리 자바스크립트 추가하기 -->
    <script src="./js/jquery.min.js"></script>
    <!-- Popper 자바스크립트 추가하기 -->
    <script src="./js/popper.min.js"></script>
    <!-- 부트스트랩 자바스크립트 추가하기 -->
    <script src="./js/bootstrap.min.js"></script>
    <!-- MDB 라이브러리 자바스크립트 추가하기 -->
    <script src="./js/mdb.min.js"></script>

  </body>
</html>
