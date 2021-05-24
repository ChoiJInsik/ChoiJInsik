
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!doctype html>

<html lang="ko">
<head>
<!-- 스타일 -->

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
crossorigin="anonymous">
<title>결제</title>
</head>
<body>
<h1 style="margin: 100px; color: black; text-align: center;">주문 내역</h1>


  
  <main role="main text-center">

<section class="jumbotron text-center bg-white">
<table class="table" style="width:1000px; margin-left: auto; margin-right: auto;">
  <colgroup>
    <col width="20%"/>
    <col width="20%"/>
    <col width="20%"/>
    <col width="20%"/>
    <col width="20%"/>
  </colgroup>
<thead>

 
  <tr>
    <th scope="col">상품정보</th>
    <th scope="col">주문일자</th>
    <th scope="col">주문번호</th>
    <th scope="col">주문금액(수량)</th>
    <th scope="col">상태</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>한우</td>
    <td>2021.1.1</td>
    <td>1</td>
    <td>20000(1EA)</td>
    <td>배송완료</td>
    
  </tr>
 
</tbody>
</table>
</section>

</main>
  



<nav aria-label="Page navigation example">
<ul class="pagination " style="justify-content: center; margin-top:200px;">
  <li class="page-item" >
    <a class="page-link" href="#" aria-label="Previous">
      <span aria-hidden="true">&laquo;</span>
    </a>
  </li>
  <li class="page-item" ><a class="page-link" href="#">1</a></li>
  <li class="page-item" ><a class="page-link" href="#">2</a></li>
  <li class="page-item" ><a class="page-link" href="#">3</a></li>
  <li class="page-item" ><a class="page-link" href="#">4</a></li>
  <li class="page-item" ><a class="page-link" href="#">5</a></li>
  <li class="page-item">
    <a class="page-link" href="#" aria-label="Next">
      <span aria-hidden="true">&raquo;</span>
    </a>
  </li>
</ul>
</nav>



<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script
  src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
  crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
  -->
</body>
</html>