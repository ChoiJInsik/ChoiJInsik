<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	
	
    <title>회원가입</title>
    
    
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js" type="text/javascript"></script>


    
    <script language="JavaScript">

$(document).ready(function() { //id check
    $("#idCheck").on("click", function(e) {
       e.preventDefault();
       fn_idCheck();
    });
 });

function fn_idCheck(){ //id check
if(!$("#MEM_ID").val()){
       alert("아이디를 입력하세요");
       $("#MEM_ID").focus();
       return false;
}
 var MEM_ID = {MEM_ID : $('#MEM_ID').val()};
 
 $.ajax({
     url:"<c:url value='/member/idCheck.do'/>",
     type:'get',
     data: MEM_ID,
     success:function(data){              
         if($.trim(data)=="0"){
            alert("사용가능한 아이디입니다.");       
         }else{
            alert("중복된 아이디입니다.");
             $('#MEM_ID').val('');
             $('#MEM_ID').focus();
         }
     },
     error:function(){
             alert("ERROR");
             
     }
 });
};




function openAgree(){
    var newWindow=open("/yook/member/openAgree.do","약관확인", "width=600, height=800");

    if(frm.MEM_AGREE.disabled==true)
      frm.MEM_AGREE.disabled=false
      else
         frm.MEM_AGREE.disabled=true
   }

function agreeCheck(frm)
{
   
   if(frm.checkButton.disabled==true)
      frm.checkButton.disabled=false
      else
         frm.checkButton.disabled=true
}
</script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   function DaumAddressAPI() {
      new daum.Postcode(
            {
               oncomplete : function(data) {
                  
                  var addr = ''; // 
                  var extraAddr = ''; 

                  
                  if (data.userSelectedType === 'R') { 
                     addr = data.roadAddress;
                  } else { 
                     addr = data.jibunAddress;
                  }

                  
                  if (data.userSelectedType === 'R') {
                     if (data.bname !== ''
                           && /[동|로|가]$/g
                                 .test(data.bname)) {
                        extraAddr += data.bname;
                     }
                     
                     if (data.buildingName !== ''
                           && data.apartment === 'Y') {
                        extraAddr += (extraAddr !== '' ? ', '
                              + data.buildingName
                              : data.buildingName);
                     }
                     
                     if (extraAddr !== '') {
                        extraAddr = ' (' + extraAddr
                              + ')';
                     }
                     /* 
                     document
                           .getElementById("MEM_ADDRESS3").value = extraAddr; */

                  } /* else {
                     document
                           .getElementById("MEM_ADDRESS3").value = '';
                  } */

                  
                  document
                        .getElementById('MEM_ZIPCODE').value = data.zonecode;
                  document
                        .getElementById("MEM_ADDRESS1").value = addr;
                  
                  document.getElementById(
                        "MEM_ADDRESS2")
                        .focus();
               }
            }).open();
   }
</script>
    
  </head>
  <body>
    <div style="height: 160px;"></div>
<div align="center">
	<h3>Join</h3> 
</div>
<div style="height: 50px;"></div>




<form id="frm" name="frm" class="form-inline" method="post">
      <table class="joinFormView" style="border:0; cellpadding:1; cellspacing:1;" align="center">
            <tr> 
               <td style="width:150px; padding-right:15px;" align="right" > 사용자 ID</td>
               <td style="width:300px;">
               <input type="text" id="MEM_ID" name="MEM_ID" size="15" maxlength="12" class="form-control" placeholder="아이디" style="width:100%;">
               </td>
               <td style="width:100px;">
               <input type="button" name="idCheck" value="ID 중복확인" class="btn btn-outline-primary mb-2" OnClick="fn_idCheck()" style="width:100%;">
               </td>
            </tr>
               
            <tr>
               <td style="width:150px; padding-right:15px;" align="right" > 비밀번호</td>
               <td colspan="2">
               <input type="password" id="MEM_PW" name="MEM_PW" size="15" maxlength="12" class="form-control" placeholder="비밀번호" style="width:100%;">
               </td>
            </tr>
            
            <tr>
               <td style="width:150px; padding-right:15px;" align="right"> 비밀번호 확인</td>
                 <td colspan="2">
                 <input type="password" id="MEM_PW2" name="MEM_PW2" size="15" maxlength="12" class="form-control" placeholder="비밀번호 확인" style="width:100%;">
                 </td>
              </tr>
            
            <tr>
               <td style="width:150px; padding-right:15px;" align="right" > 사용자 이름</td>
               <td colspan="2">
               <input type="text" id="MEM_NAME" name="MEM_NAME" size="15" maxlength="12" class="form-control" placeholder="이름" style="width:100%;">
               </td>
            </tr>
            
            
            <tr>
                  <td style="width:150px; padding-right:15px;" align="right">이메일</td>
                <td colspan="2">
                  <input type="text" id="MEM_EMAIL" name="MEM_EMAIL" size="40" maxlength="30" class="form-control" placeholder="이메일" style="width:100%;">
                </td>
             </tr>
             
             <tr>
                <td style="width:150px; padding-right:15px;" align="right"> 연락처</td>
                <td colspan="2">
                <input type="text" id="MEM_PHONE" name="MEM_PHONE" size="40" maxlength="12" placeholder="연락처(- 없이 숫자만 입력)"
                 oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"  class="form-control" placeholder="PHONE" style="width:100%;">
                </td>
             </tr>

             <tr>
             <td style="width:150px; padding-right:15px;" align="right" rowspan="2"> 주 소</td>
             <td>
             <input type="text" id="MEM_ZIPCODE" name="MEM_ZIPCODE" placeholder="우편번호" size="15" class="form-control" readonly style="width:100%;">
             </td>
             <td>
            <input type="button" onclick="DaumAddressAPI()" class="btn btn-outline-primary mb-2" value="우편번호 찾기" style="width:100%;"><br>
            </td>
            </tr>
            <tr>
            <td colspan="2">
            <input type="text" name="MEM_ADDRESS1" id="MEM_ADDRESS1" placeholder="주소" size="40" class="form-control" style="width:100%;"><br>
            <input type="text" name="MEM_ADDRESS2" id="MEM_ADDRESS2" placeholder="상세주소" size="40" class="form-control" style="width:100%;">
            </td>
            </tr>
			
			<tr>
				<td style="width:150px; padding-right:15px;" align="right" rowspan="2">마케팅 수신 동의</td>
				<td colspan="2">
				<br>
				Email 수신 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<div class="form-check form-check-inline" style="display: inline-block;">
				  <label class="form-check-label" for="inlineRadio1"><input class="form-check-input" type="radio" name="MEM_EMAILCK" id="email1" value="Y" checked="checked">동의</label>
				</div>
				<div class="form-check form-check-inline" style="display: inline-block;">
				  <label class="form-check-label" for="inlineRadio2"><input class="form-check-input" type="radio" name="MEM_EMAILCK" id="email2" value="N">동의 안함</label>
				</div>
				</td>
			</tr>
			
            <tr>
            	<td colspan="2">
               SNS 수신 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               <div class="form-check form-check-inline" style="display: inline-block;">
				  <label class="form-check-label" for="inlineRadio1"><input class="form-check-input" type="radio" name="MEM_PHONECK" id="phone1" value="Y" checked="checked">동의</label>
				</div>
				<div class="form-check form-check-inline" style="display: inline-block;">
				  <label class="form-check-label" for="inlineRadio2"><input class="form-check-input" type="radio" name="MEM_PHONECK" id="phone2" value="N">동의 안함</label>
				</div>
               </td>
            </tr>
            

			<tr style="margin-top:30px;"> 
            <td colspan="3" align="center">   
            <br><br>
            이용약관 및 개인정보 수집 및 이용에 모두 동의합니다. 
            <br><br>
            <input type="button" name="agree" value="약관확인" class="btn btn-outline-primary mb-2"  onclick="openAgree()"/>
            <div style="display:inline-block; margin-left:100px;">
  				<label class="form-check-label" for="MEM_AGREE"><input class="form-check-input" type="checkbox" name="MEM_AGREE" id="MEM_AGREE" disabled onclick="agreeCheck(this.form)">동의</label>
  			</div>
            </td>
            </tr>

            <tr>
               <td colspan="3" align="center">
               <br>
               <a href="#this" class="btn" id="join"><input type="button" class="btn btn-primary mb-2" name="checkButton" value="가입하기" disabled/></a> 
                  <input type="reset" name="reset" value="다시입력" class="btn btn-outline-primary mb-2"/>&nbsp;&nbsp;&nbsp;
                  <input type="button" value="가입안함" class="btn btn-outline-primary mb-2" onclick="javascript:window.location='/muscle/main/openMainList.do'" />
               </td>
            </tr>

      </table>
</form>

<script type="text/javascript">

      $("#join").on("click", function(e) {
         e.preventDefault();
         fn_insertJoin();
      });

      function fn_insertJoin() {
         var comSubmit = new ComSubmit("frm");
         comSubmit.setUrl("<c:url value='/member/insertJoin.do' />");

            if(!$("#MEM_ID").val()){
                  alert("아이디를 입력하세요");
                  $("#MEM_ID").focus();
                  return false;
               }

            if(!$("#MEM_PW").val()){
               alert("비밀번호를 입력하세요");
               $("#MEM_PW").focus();
               return false;
            }

            if(!$("#MEM_PW2").val()){
               alert("비밀번호를 확인하세요");
               $("#MEM_PW2").focus();
               return false;
            }

            if($("#MEM_PW").val() != $("#MEM_PW2").val()){
               alert("비밀번호가 일치하지 않습니다.");
               $("#MEM_PW2").focus();
               return false;
            }            

            if(!$("#MEM_NAME").val()){
               alert("이름을 입력하세요");
               $("#MEM_NAME").focus();
               return false;
            }

           

            if(!$("#MEM_PHONE").val()){
               alert("연락처를 입력하세요");
               $("#MEM_PHONE").focus();
               return false;
            }

            if(!$("#MEM_ZIPCODE").val()){
               alert("우편번호를 입력하세요");
               $("#MEM_ZIPCODE").focus();
               return false;
            }

            if(!$("#MEM_ADDRESS1").val()){
               alert("주소를 입력하세요");
               $("#MEM_ADDRESS1").focus();
               return false;
            }

            if(!$("#MEM_ADDRESS2").val()){
               alert("상세주소를 입력하세요");
               $("#MEM_ADDRESS2").focus();
               return false;
            }
            alert("가입이 완료 되었습니다.");
            comSubmit.submit();
      }
   </script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>