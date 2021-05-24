<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>결제</title>        
</head>


<body onload="fn_allPrice()">

    <div style="height: 80px;"></div>
    <div align="center">
        <h3>주문 확인</h3>
    </div>
    <div style="height: 50px;"></div>
    <div class="container" style="width:70%;">

        <form name="orderWrite" id="orderWrite" method="post" action="/muscle/order/orderPay.do">



            <!-- 주문 상세 정보 -->
            <div class="table-responsive">
                <table style="width:100%;">
                    <colgroup>
                        <col width="15%" />
                        <col width="*" />
                    </colgroup>
                    <tr>
                        <colspan colspan="2">주문 날짜</colspan>
                        <colspan style="float:right">주문 번호</colspan>
                        <hr>
                        </th>
                    </tr>

                    <div class="container-outline-secondary">
                        <tr>
                            <h5>배송 및 결제 상세 내역</h5>
                        </tr>
                        <tr>
                            <td style="margin-top:5">이름</td>
                            <td><input name="MEM_NAME" value="${map.MEM_NAME}" readonly="readonly" id="MEM_NAME"
                                    class="form-control" style="width:20%; margin-top: 5px;"></td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td><input id="MEM_EMAIL" name="MEM_EMAIL" value="${map.MEM_EMAIL}" readonly="readonly"
                                    class="form-control" style="width:40%;"></td>
                        </tr>
                        <tr>
                            <td>연락처</td>
                            <td><input id="MEM_PHONE" name="MEM_PHONE" value="${map.MEM_PHONE}" readonly="readonly"
                                    class="form-control" style="width:40%;"></td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td><input id=name="ORDER_DZIPCODE" value="${map.ORDER_DZIPCODE}" readonly="readonly"
                                    class="form-control" style="width:40%;">
                                <input id=name="ORDER_DADD1" value="${map.ORDER_DADD1}" readonly="readonly"
                                    class="form-control" style="width:40%;">
                                <input id=name="ORDER_DADD2" value="${map.ORDER_DADD2}" readonly="readonly"
                                    class="form-control" style="width:40%;"></td>
                        </tr>
                        <tr>
                            <td>배송 메모</td>
                            <td><input id="ORDER_DMEMO" name="ORDER_DMEMO" value="${map.ORDER_DMEMO}"
                                    readonly="readonly" class="form-control" style="width:40%;"></td>
                        </tr>
                    </div>
                </table>
            </div>
            <hr>

            <!-- 결제 상세 정보 -->
            <div class="table-responsive">
                <table style="width:100%;">
                    <colgroup>
                        <col width="20%" />
                        <col width="*" />
                    </colgroup>
                    <tr>
                        <td>총 결제 금액</td>
                        <td><input id="ORDER_PAY" name="ORDER_PAY" value="${map.ORDER_PAY}" readonly="readonly"
                                class="form-control" style="width:40%;"></td>
                    </tr>
                    <tr>
                        <td>적립 포인트 예정</td>
                        <td><input id="POINT" name="POINT" value="${map.POINT}" readonly="readonly" class="form-control"
                                style="width:40%;"></td>
                    </tr>
                    <tr>
                        <td>무통장 입금</td>
                        <td>무통장입금 : 1234-11-1234567 카카오뱅크 / (주)식육증가</label>

                    </tr>

                </table>
                <hr class="my-5">
            </div>
            <div class="container" style="height:50px"></div>
            


            <hr>
            <!-- 주문자 정보 -->
            <div class="table-responsive">
                <table style="width:100%; margin-bottom: 10px;">
                    <tr>
                        <colspan colspan="2">배송정보</colspan>
                    </tr>
                    <div class="row offset-md-0">
                        <main role="main">
                            <table class="table">
                                <colgroup>
                                    <col width="20%" />
                                    <col width="20%" />
                                    <col width="20%" />
                                    <col width="20%" />
                                    <col width="20%" />
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th scope="col">이미지</th>
                                        <th scope="col">주문번호</th>
                                        <th scope="col">상품정보</th>
                                        <th scope="col">주문금액</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="col"></th>
                                        <td scope="row"><input id="MEM_EMAIL" name="MEM_EMAIL" value="${map.MEM_EMAIL}"
                                                readonly="readonly" class="form-control" style="width:40%;"></td>
                                        <td><input id="MEM_PHONE" name="MEM_PHONE" value="${map.MEM_PHONE}"
                                                readonly="readonly" class="form-control" style="width:40%;"></td>
                                        <td><input id="MEM_PHONE" name="MEM_PHONE" value="${map.MEM_PHONE}"
                                                readonly="readonly" class="form-control" style="width:40%;"></td>
                                        <td><button type="button" class="btn-sm btn-outline-secondary">주문내역보기</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </main>
                    </div>
            </div>
            <div class="container" style="height:100px"></div>

            <!-- Optional JavaScript -->
            <!-- jQuery first, then Popper.js, then Bootstrap JS -->
            <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
                crossorigin="anonymous">
            </script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
                crossorigin="anonymous">
            </script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
                crossorigin="anonymous">
            </script>
</body>

</html>