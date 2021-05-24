<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<head>
        <title></title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
        <style type="text/css">
            .container {background-color: light-grey; padding: 20px;}
        </style>
    </head>
<body>
 <div id="layoutSidenav_content">
        <div class="container">

			<ul class="nav nav-pills ml-5 mt-5"">
				<li style="margin-left:20px;"><a href="#tab1" data-toggle="tab">상품관련</a></li>
				<li style="margin-left:20px;"><a href="${contextPath}/yook/delivery.do">배송</a></li>
				<li style="margin-left:20px;"><a href="#tab3" data-toggle="tab">주문/결제</a></li>
			  </ul>

        <div class="tab-content ml-5 mt-5" style="margin-bottom:50px">
            <div class="tab-pane fade active in" id="tab1">
                <ul class="nav nav-pills">
					<li style="margin-left:20px;"><a href="#tab1-1" data-toggle="tab">돼지고기</a></li>
					<li style="margin-left:20px;"><a href="#tab1-2" data-toggle="tab">소고기</a></li>
					<li style="margin-left:20px;"><a href="#tab1-3" data-toggle="tab">닭고기</a></li>
				  </ul>

                <div class="tab-content mt-5" style="margin-bottom:50px">
					<div class="tab-pane fade active in" id="tab1-1">
						<table class="table table-hover">
							<tbody>
								<tr data-toggle="collapse" data-target="#accordion" class="clickable">
									<td>[돼지고기] 두께를 선택할 수 있나요?</td>
								</tr>
								<tr>
									<td>
										<div id="accordion" class="collapse">판매중인 돼지고기 삼겹살/목살 상품은 '얇게(11mm)', '보통(16mm)', '두껍게(24mm)', '수육용(덩어리)' 4가지 두께 중 선호에 따라 선택하실 수 있으며, 돼지고기 등심 상품은 '보통(11mm)', '두껍게(24mm)' 중 선택하실 수 있습니다.고기 두께는 조리하시려는 용도에 맞추어 선택하시면 좋습니다. 삼겹살/목살의 경우 일반 가정용 프라이팬에 구워 드신다면 보통(16mm) 두께를 추천드립니다. 가장 얇은 두께는 얇게(11mm)입니다. 스테이크 용이나 캠핑 용으로 사용하실 경우에는 두껍게(24mm)를 선택하시면 육즙 가득한 상태로 드실 수 있습니다.</div>
									</td>
								</tr>
								<tr data-toggle="collapse" data-target="#accordion1" class="clickable">
									<td>[돼지고기] 고기 색깔이 이상해요</td>
								</tr>
								<tr>
									<td>
										<div id="accordion1" class="collapse">상품을 가장 신선하게 배송해드리기 위해 진공스킨포장 방식으로 상품을 포장해드립니다. 진공 포장은 특성 상 산소 결합이 차단되어 고기의 색이 탁하게 변하지만, 공기 중에 15분 정도 꺼내어 놓으시면 원래의 선홍빛 색을 찾으니 안심하고 드셔도 됩니다.</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
                    <div class="tab-pane fade" id="tab1-2">
						<table class="table table-hover">
							<tbody>
								<tr data-toggle="collapse" data-target="#accordion2" class="clickable">
									<td>[소고기] 포장 개봉 시 시큼한 냄새가 나요</td>
								</tr>
								<tr>
									<td>
										<div id="accordion2" class="collapse">유통기한 이내에 상품개봉 시 일시적으로 나타나는 냄새는 진공포장으로 인해 발생하는 것으로 15~30분후에 자연적으로 없어지니 안심하셔도 좋습니다. 하지만 보관부주의 등으로 인한 상품 변질 시에는 시큼한 냄새가 사라지지 않으며 고기 표면이 끈적거리는 현상이 보입니다. 이런경우 상품을 섭취하지 마시고 고객센터로 문의해주시기 바랍니다.</div>
									</td>
								</tr>
								<tr data-toggle="collapse" data-target="#accordion3" class="clickable">
									<td>[소고기] 소고기는 왜 숙성을 하나요?</td>
								</tr>
								<tr>
									<td>
										<div id="accordion3" class="collapse">판매중인 상품 특성 별로 고객님께서 가장 맛있게 드실 수 있는 때의 상품을 가장 신선하게 제공해드리고 있습니다. 이를 위해 갓 잡은 때 가장 맛있는 상품은 갓 잡아 보내드리고, 숙성을 했을 때 가장 맛있는 상품은 숙성을 통해 맛을 극대화시킨 뒤 보내드리고 있습니다. 소고기는 돼지고기/닭고기와는 달리 촘촘한 단백질 조직 때문에 갓 도축한 상태일 때 바로 먹으면 질긴 특성이 있으며, 부드럽고 풍미 가득한 맛을 내어 먹기 좋은 상태로 만들기 위해 숙성이 필요합니다. 정육각에서는 소고기 부위별로 최고의 맛을 내는 숙성 기간을 찾아서 그 기간동안 전문적인 숙성을 통해 신선함은 지키면서 고기가 가장 맛있는 상태일 때 고객님께 보내드리고 있습니다. 숙성을 거치면 맛은 더욱 올라가지만, 숙성 기간 중에 신선도가 떨어지는 것은 아니니 안심하고 드셔도 됩니다.</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
                    <div class="tab-pane fade" id="tab1-3">
						<table class="table table-hover">
							<tbody>
								<tr data-toggle="collapse" data-target="#accordion4" class="clickable">
									<td>[닭고기] 붉은 빛이 도는데 괜찮은건가요?</td>
								</tr>
								<tr>
									<td>
										<div id="accordion4" class="collapse">진공포장을 개봉한 후 15분 정도가 지나면 닭고기 본연의 색깔을 확인하실 수 있으며, 닭고기는 신선할수록 붉은 빛이 돕니다. 껍질이 하얗고 두껍게 변한 닭은 도계한 지 시간이 흐른 닭입니다.</div>
									</td>
								</tr>
								<tr data-toggle="collapse" data-target="#accordion5" class="clickable">
									<td>[닭고기] 다진고기는 판매하지 않나요?</td>
								</tr>
								<tr>
									<td>
										<div id="accordion5" class="collapse">현재 홈페이지에서 판매중인 부위/옵션 이외의 다진고기는 판매되고 있지 않은 점 양해 부탁드립니다. 다진 고기의 경우 공기와 접촉하는 면적이 넓어져 냉장유통 시 신선도를 지키기 어려운 부분이 있어 현재 판매가 어려우나, 향후 제공할 수 있도록 노력을 기울이고 있습니다. 항상 가장 신선한 상품만 전할 수 있도록 노력하겠습니다.</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
                </div>
            </div>
            <div class="tab-pane fade" id="tab2"></div>
            <div class="tab-pane fade" id="tab3">
						<table class="table table-hover mt-5">
							<tbody>
								<tr data-toggle="collapse" data-target="#accordion7" class="clickable">
										<td>무통장 입금은 어디로 하나요?</td>
									</tr>
									<tr>
										<td>
											<div id="accordion7" class="collapse">금액과 이체계좌가 안내된 알림톡을 확인 하신 후 이체 부탁드립니다. 안내 메시지를 받지 못하신 경우 [마이페이지-주문 내역]에서 이체하실 금액을 확인하신 후 아래 계좌로 이체해주시기 바랍니다. 은행명 : 기업은행 계좌번호 : 02 1111 2222 예금주 : 주식회사식육증가</div>
										</td>
									</tr>
									<tr data-toggle="collapse" data-target="#accordion8" class="clickable">
										<td>무통장 입금으로 주문하면 입금은 언제까지 해야하나요?</td>
									</tr>
									<tr>
										<td>
											<div id="accordion8" class="collapse">무통장 입금 주문의 이체 마감 시간은 배송방법별로 상이하오니 아래 내용을 확인해주시기 바랍니다. 우체국택배 : 배송희망일 전일 오후 4시까지 새벽배송 : 배송희망일 전일 오후8시까지 당일배송 : 배송희망일 당일 낮 12시까지 또한 위의 마감 시간까지 미이체시 자동으로 주문이 취소될 수 있으니 배송희망일에 상품 수령을 희망하시는 경우 마감 시간 이내에 이체 부탁드립니다.</div>
										</td>
									</tr>
							</tbody>
						</table>
        	</div>
     
</div>
</body>
</html>