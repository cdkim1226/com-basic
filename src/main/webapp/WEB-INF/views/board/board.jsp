<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/home.svg"><span class="d-none d-md-inline">메인</span>
            </a>
            <a href="#usermenu" class="list-group-item d-inline-block collapsed"
              data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="../resources/img/user.svg"><span class="d-none d-md-inline">회원관리</span>
            </a>
            <div class="collapse" id="usermenu">
              <a href="#" class="list-group-item" data-parent="#sidebar">회원가입</a>
              <a href="#" class="list-group-item" data-parent="#sidebar">로그인</a>
              <a href="#" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
              <a href="#" class="list-group-item" data-parent="#sidebar">로그아웃</a>
            </div>
            <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/board.svg"><span class="d-none d-md-inline">자유게시판</span>
            </a>
            <a href="#" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="../resources/img/qna.svg"><span class="d-none d-md-inline">Q&A</span>
            </a>
            <a href="#search" class="list-group-item d-inline-block collapsed"
              data-parent="#sidebar" data-toggle="collapse" aria-expanded="false">
              <img style="width: 20px;" src="../resources/img/search.svg"><span class="d-none d-md-inline">검색</span>
            </a>
            <div class="collapse" id="search">
              <div class="input-group p-2" style="background-color: #1c1c1c;">
                <input type="text" class="form-control" placeholder="내용을 입력하세요">
              </div>
            </div>
          </div>
        </nav>
        <main id="main" class="col-md-9 float-left col p1-md-5 pt-4 main">
          <h4>자유 게시판</h4>
          <br>
          <table class="table table-striped" style="max-width: 1080px;">
            <thead>
              <tr>
                <th class="mobile" style="width: 60px; text-align: center;">번호</th>
                <th style="text-align: center;">제목</th>
                <th class="mobile" style="width: 80px; text-align: center;">작성자</th>
                <th class="mobile" style="width: 120px; text-align: center;">날짜</th>
              </tr>
            </thead>
            <tbody>
            <c:forEach var="mm" items="${Banana}">
              <tr>
                <td class="mobile" style="text-align: center;">${mm.seq}</td>
                <td><a href="boardView" style="color: #000000;">${mm.title}</a></td>
                <td class="mobile" style="text-align: center;">${mm.id}</td>
                <td class="mobile" style="text-align: center;">${mm.regdate}</td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
          <div style="max-width: 1080px;">
            <a href="/board/boardWrite" class="btn btn-primary float-right">글쓰기</a>
          </div>
          <ul class="pagination">
            <li class="page-item disabled">
              <span class="page-link">&laquo;</span>
            </li>
            <li class="page-item"><a class="page-link mobile" href="#">1</a></li>
            <li class="page-item active"><a class="page-link mobile" href="#">2</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">3</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">4</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">5</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">6</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">7</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">8</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">9</a></li>
          </ul>
          <footer class="text-center" style="max-width: 920px;">
            <p>Copyright &copy; 2020 김창대 All Rights Reserved.</p>
          </footer>
        </main>
      </div>
    </div>
    <script src="../resources/js/jquery.min.js"></script>
    <script src="../resources/js/popper.min.js"></script>
    <script src="../resources/js/bootstrap.min.js"></script>
  </body>
</html>
