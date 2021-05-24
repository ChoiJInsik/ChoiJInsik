<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>내 포인트</title>
  </head>
  <body>    
    <main role="main text-center">

  <section class="jumbotron text-center bg-white">
  <table class="table">
    <colgroup>
      <col width="25%"/>
      <col width="25%"/>
      <col width="25%"/>
      <col width="25%"/>
    </colgroup>
  <thead>
    <tr>
     <th scope="col">적립금 내역</th>
   </tr>
     <tr>
     <th scope="col">현재 적립금 3,000원</th>
   </tr>
    <tr>
      <th scope="col">상태</th>
      <th scope="col">적립금</th>
      <th scope="col">적립 내용</th>
      <th scope="col">적용 일시</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">적립</th>
      <td>+3000</td>
      <td>주문 적립</td>
      <td>2021.02.23</td>
    </tr>
    <tr>
      <th scope="row">사용</th>
      <td>-3000</td>
      <td>적립금 결제</td>
      <td>2021.02.23</td>
    </tr>
    <tr>
      <th scope="row">적립</th>
      <td>+3000</td>
      <td>주문적립</td>
      <td>2021.02.20</td>
    </tr>
  </tbody>
</table>
  </section>
  
</main>


    <!— Optional JavaScript —>
    <!— jQuery first, then Popper.js, then Bootstrap JS —>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>