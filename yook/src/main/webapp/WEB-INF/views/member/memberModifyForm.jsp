<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>

<title>회원정보수정</title>

</head>
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


$(document).ready(function() { //nick check

   
    $("#nickCheck").on("click", function(e) {
       e.preventDefault();
       fn_nickCheck();
    });
 });

function fn_nickCheck(){ //nick check
if(!$("#MEM_NICK").val()){
       alert("닉네임을 입력하세요");
       $("#MEM_NICK").focus();
       return false;
}
	var MEM_NICK = {MEM_NICK : $('#MEM_NICK').val()};
 $.ajax({
     url:"<c:url value='/member/nickCheck.do'/>",
     type:'get',
     data: MEM_NICK,
     success:function(data){    
         if($.trim(data)=="0"){
            alert("사용가능한 닉네임입니다.");       
         }else{
            alert("중복된 닉네임입니다.");
             $('#MEM_NICK').val('');
             $('#MEM_NICK').focus();
         }
     },
     error:function(){
             alert("닉네임을 입력하세요");
     }
 });
};

function openAgree(){
    var newWindow=open("http://localhost:8007/muscle//member/openAgree.do","약관확인", "width=600, height=800");

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
<body>



<div style="height: 160px;"></div>
<div align="center">
	<h3>회원정보 수정</h3> 
</div>
<div style="height: 50px;"></div>




<form id="frm" name="frm" class="form-inline" method="post">
      <table class="joinFormView" style="border:0; cellpadding:1; cellspacing:1;" align="center">

            <tr>
               <td style="width:150px; padding-right:15px;" align="right" > 새 비밀번호</td>
               <td colspan="2">
               <input type="password" id="MEM_PW" name="MEM_PW" size="15" maxlength="12" class="form-control" placeholder="비밀번호" style="width:100%;">
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
               <td colspan="3" align="center">
               <br>
               <a href="#this" class="btn" id="join"><input type="button" class="btn btn-primary mb-2" name="checkButton" value="수정하기" disabled/></a> 
                  <input type="reset" name="reset" value="다시입력" class="btn btn-outline-primary mb-2"/>&nbsp;&nbsp;&nbsp;
                  <input type="button" value="회원탈퇴" class="btn btn-outline-primary mb-2" onclick="javascript:window.location='/muscle/main/openMainList.do'" />
               </td>
            </tr>

      </table>
</form>

 

<div style="height:80px;"> 
 
</div>

<footer style="border-top:1px solid #D5D5D5;">

</footer>
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

            if(!$("#MEM_NICK").val()){
               alert("닉네임 입력하세요");
               $("#MEM_NICK").focus();
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
</body>
</html>