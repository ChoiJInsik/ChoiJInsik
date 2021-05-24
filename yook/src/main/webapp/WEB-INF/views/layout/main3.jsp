<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!doctype html>
<html lang="ko">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
	
	<title>식육증가</title>
</head>

<body>
	<header>
		<div class="collapse bg-dark" id="navbarHeader">
			
		<div class="navbar navbar-dark bg-dark shadow-sm">
			<div class="container d-flex justify-content-between">
				<a href="#" class="navbar-brand d-flex align-items-center"> <svg
						xmlns="http://www.w3.org/2000/svg" width="20" height="20"
						fill="none" stroke="currentColor" stroke-linecap="round"
						stroke-linejoin="round" stroke-width="2" aria-hidden="true"
						class="mr-2" viewBox="0 0 24 24" focusable="false">
						<path
							d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z" />
						<circle cx="12" cy="13" r="4" /></svg>
				</a>
			</div>
		</div>
	</header>

	<main role="main">

		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="width:100%;">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<a href="#"><img class="d-block img-fluid"
						src="/yook/img/cow.webp"
						alt="First slide" style="width:100%;"></a>
					<div class="carousel-caption d-none d-md-block">
						<h5>EVENT</h5>
						<p>3월 이벤트 확인하러 가기</p>
					</div>

				</div>
				<div class="carousel-item">
					<a href="#"><img class="d-block img-fluid"
						src="/yook/img/pig.webp"
						alt="Second slide" style="width:100%;"></a>
					<div class="carousel-caption d-none d-md-block">
						<h5>NOTICE</h5>
						<p>식육증가 공지사항 확인하기</p>
					</div>
				</div>
				<div class="carousel-item">
					<a href="#"><img class="d-block img-fluid"
						src="/yook/img/chicken.webp"
						alt="Third slide" style="width:100%;"></a>
					<div class="carousel-caption d-none d-md-block">
						<h5>BEST</h5>
						<p>베스트 상품보러 가기</p>
					</div>
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
		</div>
		</section>

		<div align="center" class="btn-group-center mt-5 mb-5" role="group"
			aria-label="Basic example">
			<h3>베스트 상품</h3>  
		</div>

		<div class="album py-5 bg-light">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img src="/test/resources/images/porkbelly.jpg" class="img-fluid">
							<p align="right">
								<button type="button">
									<img src="/test/resources/images/shopping-cart.png">
								</button>
							</p>
							<div class="card-body">
								<p class="card-text">goods_name</p>
								<div class="d-flex justify-content-between align-items-center">
									<small class="text-muted">price</small>
								</div>
							</div>  
						</div>
					</div>


					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img src="/test/resources/images/beeftender-mone.jpg"
								class="img-fluid">
							<p align="right">
								<button type="button">
									<img src="/test/resources/images/shopping-cart.png">
								</button>
							</p>
							<div class="card-body">
								<p class="card-text">goods_name</p>
								<div class="d-flex justify-content-between align-items-center">
									<small class="text-muted">price</small>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img src="/test/resources/images/chickef-whole.jpg"
								class="img-fluid">

							<p align="right">
								<button type="button">
									<img src="/test/resources/images/shopping-cart.png">
								</button>
							</p>
							<div class="card-body">
								<p class="card-text">goods_name</p>
								<div class="d-flex justify-content-between align-items-center">
									<small class="text-muted">price</small>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img src="/test/resources/images/beefsirloin-monep.jpg"
								class="img-fluid">
							<p align="right">
								<button type="button">
									<img src="/test/resources/images/shopping-cart.png">
								</button>
							</p>
							<div class="card-body">
								<p class="card-text">goods_name</p>
								<div class="d-flex justify-content-between align-items-center">
									<small class="text-muted">price</small>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img src="/test/resources/images/porkneck-fresh.jpg"
								class="img-fluid">
							<p align="right">
								<button type="button">
									<img src="/test/resources/images/shopping-cart.png">
								</button>
							</p>
							<div class="card-body">
								<p class="card-text">goods_name</p>
								<div class="d-flex justify-content-between align-items-center">
									<small class="text-muted">price</small>
								</div>
							</div>
						</div>
					</div>


					<div class="col-md-4">
						<div class="card mb-4 shadow-sm">
							<img src="/test/resources/images/beefstrip-bonep.jpg"
								class="img-fluid">
							<p align="right">
								<button type="button">
									<img src="/test/resources/images/shopping-cart.png">
								</button>
							</p>
							<div class="card-body">
								<p class="card-text">goods_name</p>
								<div class="d-flex justify-content-between align-items-center">
									<small class="text-muted">price</small>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="/docs/4.4/assets/js/vendor/jquery.slim.min.js"><\/script>')
	</script>
	<script src="/docs/4.4/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm"
		crossorigin="anonymous"></script>

	<!— Optional JavaScript —>
	<!— jQuery first, then Popper.js, then Bootstrap JS —>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>