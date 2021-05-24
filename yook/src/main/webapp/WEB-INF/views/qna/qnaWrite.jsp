
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!doctype html>

<html lang="en">
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

<title>문의</title>

</head>
<body>
<div style="margin-top: 100px; margin-bottom: 200px;">
<h1 style="margin: 50px; color: black; text-align: center;">1:1문의작성 </h1>
<div>
<div class="row mb-3" style="justify-content: center; margin-right: 120px;">
    
  <div class="row" style="width: 800px;">
    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">[제목]</label>
    <div class="col-sm-10">
      <input type="email" class="form-control form-control-lg" id="colFormLabelLg" >
    </div>
  </div>
  <div class="row" style="width: 800px;">
    <label for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg">[내용]</label>
    <div class="col-sm-10"><textarea rows="10" cols="76" title="내용" id="CONTENTS" name="CONTENTS">
      
      </textarea>
    </div>
  </div>
  </div>


  


    <div class="mb-3" style="width: 630; margin-left: auto; margin-right: auto;">
        <label for="formFile" class="form-label"></label>
        <input class="form-control" type="file" id="formFile">
      </div>
      <div class="d-grid gap-2 col-6 mx-auto" style="width: 630px;">
        <button class="btn btn-primary" type="button">문의등록</button>
        
      </div>
    </div>










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